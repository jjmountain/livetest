# == Schema Information
#
# Table name: tests
#
#  id         :uuid             not null, primary key
#  end_time   :datetime
#  entry_code :string
#  name       :string
#  qr         :string
#  qr_code    :string
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :uuid             not null
#
# Indexes
#
#  index_tests_on_course_id  (course_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#


class Test < ApplicationRecord
  require 'rqrcode'
  delegate :url_helpers, to: 'Rails.application.routes' 
  belongs_to :course
  has_many :questions
  has_one_attached :qr
  after_create :generate_qr

  def generate_qr
    qrcode = RQRCode::QRCode.new(url_helpers.test_url(self))
    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: 'black',
      file: nil,
      fill: 'white',
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 400
    )
    file = IO.binwrite("/tmp/qrcode.png", png.to_s)
    self.qr.attach(io: File.open("/tmp/qrcode.png"), filename: 'qrcode.png', content_type: 'image/png')
  end

end

# == Schema Information
#
# Table name: tests
#
#  id         :bigint           not null, primary key
#  end_time   :datetime
#  entry_code :string
#  name       :string
#  qr_code    :string
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :bigint           not null
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
  belongs_to :course
  has_many :questions
end

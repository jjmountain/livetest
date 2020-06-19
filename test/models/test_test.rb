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
require 'test_helper'

class TestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

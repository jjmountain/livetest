# == Schema Information
#
# Table name: students
#
#  id         :uuid             not null, primary key
#  email      :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :uuid             not null
#
# Indexes
#
#  index_students_on_course_id  (course_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#
require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

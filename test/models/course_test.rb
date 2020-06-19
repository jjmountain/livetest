# == Schema Information
#
# Table name: courses
#
#  id         :uuid             not null, primary key
#  name       :string
#  school     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid             not null
#
# Indexes
#
#  index_courses_on_user_id  (user_id)
#
require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

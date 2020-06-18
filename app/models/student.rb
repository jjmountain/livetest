# == Schema Information
#
# Table name: students
#
#  id         :bigint           not null, primary key
#  email      :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :bigint           not null
#
# Indexes
#
#  index_students_on_course_id  (course_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#
class Student < ApplicationRecord
  belongs_to :course
end

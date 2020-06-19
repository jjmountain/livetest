# == Schema Information
#
# Table name: attempts
#
#  id         :uuid             not null, primary key
#  answers    :hstore
#  end_time   :datetime
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :uuid             not null
#  test_id    :uuid             not null
#
# Indexes
#
#  attempts_answers_idx          (answers) USING gist
#  index_attempts_on_student_id  (student_id)
#  index_attempts_on_test_id     (test_id)
#
# Foreign Keys
#
#  fk_rails_...  (student_id => students.id)
#  fk_rails_...  (test_id => tests.id)
#
class Attempt < ApplicationRecord
  belongs_to :test
  belongs_to :student
end

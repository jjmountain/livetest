# == Schema Information
#
# Table name: attempts
#
#  id         :bigint           not null, primary key
#  answers    :hstore
#  end_time   :datetime
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  student_id :bigint           not null
#  test_id    :bigint           not null
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
require 'test_helper'

class AttemptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

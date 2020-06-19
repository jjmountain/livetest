# == Schema Information
#
# Table name: questions
#
#  id         :uuid             not null, primary key
#  content    :string
#  media      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  test_id    :uuid             not null
#
# Indexes
#
#  index_questions_on_test_id  (test_id)
#
# Foreign Keys
#
#  fk_rails_...  (test_id => tests.id)
#
class Question < ApplicationRecord
  belongs_to :test
  has_many :choices
  has_one_attached :media
end

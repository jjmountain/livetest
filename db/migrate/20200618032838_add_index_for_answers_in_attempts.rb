class AddIndexForAnswersInAttempts < ActiveRecord::Migration[6.0]
  def change
    add_index :attempts, :answers, name: 'attempts_answers_idx', using: :gist
  end
end

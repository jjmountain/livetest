class AddAnswersToAttempts < ActiveRecord::Migration[6.0]
  def change
    add_column :attempts, :answers, :hstore, default: {}
  end
end

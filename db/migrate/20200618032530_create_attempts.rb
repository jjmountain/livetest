class CreateAttempts < ActiveRecord::Migration[6.0]
  def change
    create_table :attempts, id: :uuid do |t|
      t.references :test, null: false, foreign_key: true, type: :uuid, index: true
      t.references :student, null: false, foreign_key: true, type: :uuid, index: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

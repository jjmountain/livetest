class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.references :course, null: false, foreign_key: true
      t.string :qr_code
      t.string :entry_code

      t.timestamps
    end
  end
end

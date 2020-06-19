class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions, id: :uuid do |t|
      t.references :test, null: false, foreign_key: true, type: :uuid, index: true
      t.string :content
      t.string :media

      t.timestamps
    end
  end
end

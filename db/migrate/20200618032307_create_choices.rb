class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices, id: :uuid do |t|
      t.string :content
      t.references :question, null: false, foreign_key: true, type: :uuid, index: true
      t.boolean :correct

      t.timestamps
    end
  end
end

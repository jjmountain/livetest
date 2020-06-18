class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.references :course, null: false, foreign_key: true
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :school

      t.timestamps
    end
  end
end

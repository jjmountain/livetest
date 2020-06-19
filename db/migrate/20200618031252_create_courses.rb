class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses, id: :uuid do |t|
      t.references :user, type: :uuid, index: true, null: false
      t.string :name
      t.string :school

      t.timestamps
    end
  end
end

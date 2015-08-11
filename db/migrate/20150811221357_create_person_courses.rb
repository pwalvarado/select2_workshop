class CreatePersonCourses < ActiveRecord::Migration
  def change
    create_table :person_courses do |t|
      t.references :person, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

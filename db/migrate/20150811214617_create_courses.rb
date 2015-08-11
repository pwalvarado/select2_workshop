class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :previous, index: true, foreign_key: true

      t.timestamps null: false
    end
    Course.create name: 'Calculo I'
    Course.create name: 'Fisica'
    Course.create name: 'Electronica I'
    Course.create name: 'Algoritmos I'
    Course.create name: 'Español'
  end
end

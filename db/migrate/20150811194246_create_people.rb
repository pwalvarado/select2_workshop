class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :favorite_color

      t.timestamps null: false
    end
    Person.create name: "Pedro",     favorite_color: "Yellow"
    Person.create name: "Valentina", favorite_color: "Blue"
    Person.create name: "Ruben",     favorite_color: "Cyan"
    Person.create name: "Andres",    favorite_color: "Brown"
    Person.create name: "Christian", favorite_color: "Magenta"
    Person.create name: "Camilo",    favorite_color: "Red"
    Person.create name: "Marta",     favorite_color: "Green"
  end
end

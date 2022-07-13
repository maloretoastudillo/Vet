class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :race
      t.date :birth_date

      t.timestamps
    end
  end
end

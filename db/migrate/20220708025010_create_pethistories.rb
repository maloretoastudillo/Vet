class CreatePethistories < ActiveRecord::Migration[6.1]
  def change
    create_table :pethistories do |t|
      t.date :date
      t.integer :state
      t.float :weight
      t.float :height
      t.string :diagnosis
      t.text :anamnesis
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end

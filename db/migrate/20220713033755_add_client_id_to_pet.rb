class AddClientIdToPet < ActiveRecord::Migration[6.1]
  def change
    add_reference :pets, :client, null: false, foreign_key: true

    t.references :pet, null: false, foreign_key: true

  end
end

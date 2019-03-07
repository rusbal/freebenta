class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :contactable_type, null: false
      t.integer :contactable_id, null: false
      t.string :mobile
      t.string :landline
      t.string :email
      t.string :address_line
      t.string :address_city
      t.string :address_province
      t.string :address_postal_code
      t.string :address_country

      t.timestamps
    end

    add_index :contacts, [:contactable_type, :contactable_id]
    add_index :contacts, :address_city
    add_index :contacts, :address_province
  end
end

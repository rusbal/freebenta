class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.string  :type # Item::Active, Item::Sold, Item::Inactive, Item::Reserved, Item::Understock
      t.string  :name, null: false
      t.string  :description
      t.integer :price

      t.timestamps
    end

    add_index :items, :type
  end
end

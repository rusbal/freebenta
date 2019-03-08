class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string  :type # ActiveItem, SoldItem
      t.string  :name, null: false
      t.string  :description
      t.integer :price

      t.timestamps
    end

    add_index :items, :type
  end
end

class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :parent_id, null: true
      t.string  :name, null: false
      t.string  :slug, null: false
      t.boolean :is_published, default: true
      t.timestamps
    end

    add_index :categories, :parent_id
    add_index :categories, :name, unique: true
    add_index :categories, :slug, unique: true
  end
end

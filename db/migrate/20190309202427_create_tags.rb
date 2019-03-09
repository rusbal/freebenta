class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string  :taggable_type, null: false
      t.integer :taggable_id, null: false
      t.string  :name
      t.text    :description

      t.timestamps
    end

    add_index :tags, [:taggable_type, :taggable_id]
    add_index :tags, :name
  end
end

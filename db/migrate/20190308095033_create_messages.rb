class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :user, index: true
      t.string :messageable_type, null: false
      t.integer :messageable_id, null: false
      t.text :body, null: false

      t.timestamps
    end

    add_index :messages, [:messageable_type, :messageable_id]
  end
end

class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slug, null: false
      t.string :state, default: 'active'
      t.timestamps
    end

    add_index :companies, :name, unique: true
    add_index :companies, :slug, unique: true
  end
end

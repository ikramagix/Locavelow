class CreateAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :price
      t.integer :accessory_type

      t.timestamps
    end
    add_index :accessories, :name, unique: true
  end
end

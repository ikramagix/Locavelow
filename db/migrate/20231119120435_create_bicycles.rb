class CreateBicycles < ActiveRecord::Migration[7.1]
  def change
    create_table :bicycles do |t|
      t.references :owner, foreign_key: { to_table: :users }
      t.string :model
      t.integer :bicycle_type, default: 0
      t.integer :size, default: 0
      t.string :condition
      t.integer :price_per_hour

      t.timestamps
    end
  end
end

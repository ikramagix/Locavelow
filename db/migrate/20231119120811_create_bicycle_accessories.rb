class CreateBicycleAccessories < ActiveRecord::Migration[7.1]
  def change
    create_table :bicycle_accessories do |t|
      t.references :bicycle, null: false, foreign_key: true
      t.references :accessory, null: false, foreign_key: true

      t.timestamps
    end
  end
end

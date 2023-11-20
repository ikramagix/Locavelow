class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.references :bicycle, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude
      t.string :address

      t.timestamps
    end
  end
end

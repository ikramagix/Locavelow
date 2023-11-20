class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :bicycle, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :rental_status

      t.timestamps
    end
  end
end

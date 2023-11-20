class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :reviewed_user, foreign_key: { to_table: :users}
      t.references :reviewer_user, foreign_key: { to_table: :users}
      t.references :rental, foreign_key: true
      t.integer :rating
      t.text :review_text
      t.datetime :review_date

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :submitter_id
      t.text :review
      t.date :review_date
      t.integer :ranking

      t.timestamps
    end
  end
end

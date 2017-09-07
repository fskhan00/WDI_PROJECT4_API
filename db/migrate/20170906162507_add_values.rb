class AddValues < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :rental_id, :integer
    add_column :users, :image, :text
    add_column :rentals, :image, :text
  end
end

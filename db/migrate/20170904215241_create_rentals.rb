class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.integer :rooms
      t.decimal :price
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :post_code
      t.string :country
      t.decimal :lat
      t.decimal :long
      t.boolean :available
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

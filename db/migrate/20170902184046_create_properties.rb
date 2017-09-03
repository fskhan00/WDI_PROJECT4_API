class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.integer :rooms
      t.integer :property_id
      t.integer :price
      t.text :adress_line1
      t.text :adress_line2
      t.text :postcode
      t.string :city
      t.string :country
      t.integer :longitude
      t.integer :latitude
      t.boolean :available
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

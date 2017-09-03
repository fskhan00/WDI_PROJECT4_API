class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :image_id
      t.integer :property_id
      t.string :src
      t.string :alt
      t.text :description

      t.timestamps
    end
  end
end

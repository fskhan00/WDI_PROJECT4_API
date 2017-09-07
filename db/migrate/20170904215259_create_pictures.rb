class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :imagefile
      t.string :description
      t.string :alt
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end

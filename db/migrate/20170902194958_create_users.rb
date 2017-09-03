class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.serial :user_id
      t.string :first_name
      t.string :last_name
      t.string :password
      t.text :image

      t.timestamps
    end
  end
end

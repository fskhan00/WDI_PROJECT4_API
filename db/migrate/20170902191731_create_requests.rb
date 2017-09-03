class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :request_id
      t.integer :user_id
      t.integer :property_id
      t.boolean :status
      t.date :request_date
      t.date :approval_date

      t.timestamps
    end
  end
end

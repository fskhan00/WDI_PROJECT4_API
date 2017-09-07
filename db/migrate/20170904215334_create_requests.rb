class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.boolean :approved
      t.date :request_date
      t.date :approval_date
      t.references :rental, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

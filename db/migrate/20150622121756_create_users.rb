class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.integer :site_id
      t.string :post
      t.integer :phone_number
      t.boolean :registered_status

      t.timestamps null: false
    end
  end
end

class CreateStockReports < ActiveRecord::Migration
  def change
    create_table :stock_reports do |t|
      t.integer :user_id
      t.integer :site_id
      t.integer :vitamin_a_red
      t.integer :vitamin_a_blue
      t.integer :deworming
      t.integer :iron_folate

      t.timestamps null: false
    end
  end
end

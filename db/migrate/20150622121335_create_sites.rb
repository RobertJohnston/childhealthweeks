class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :state_id
      t.integer :district_id
      t.string :site_name
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end

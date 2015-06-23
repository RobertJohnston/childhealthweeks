class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :district_name
      t.integer :state_id
      t.string :gis_data

      t.timestamps null: false
    end
  end
end

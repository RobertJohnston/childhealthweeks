class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.string :gis_data

      t.timestamps null: false
    end
  end
end

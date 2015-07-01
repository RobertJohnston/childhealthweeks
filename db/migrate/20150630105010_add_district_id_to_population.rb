class AddDistrictIdToPopulation < ActiveRecord::Migration
  def change
    add_column :population_reports, :district_id, :integer
  end
end

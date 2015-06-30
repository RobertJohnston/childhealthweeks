class AddStateIdToPopulation < ActiveRecord::Migration
  def change
    add_column :population_reports, :state_id, :integer
  end
end

class AddDistrictIdToProgram < ActiveRecord::Migration
  def change
    add_column :program_reports, :district_id, :integer
  end
end

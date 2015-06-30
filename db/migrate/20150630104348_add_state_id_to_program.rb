class AddStateIdToProgram < ActiveRecord::Migration
  def change
    add_column :program_reports, :state_id, :integer
  end
end

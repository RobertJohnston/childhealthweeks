class CreatePopulationReports < ActiveRecord::Migration
  def change
    create_table :population_reports do |t|
      t.integer :site_id
      t.integer :child_population
      t.integer :woman_population
      t.integer :total_population
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

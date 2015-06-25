class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports
end

class Site < ActiveRecord::Base
  has_one :state
  has_one :district
  has_many :users
  has_many :population
  has_many :stock_reports
  has_many :program_reports
end

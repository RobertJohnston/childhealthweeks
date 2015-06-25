class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
  has_many :stock_reports
end

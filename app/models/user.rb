class User < ActiveRecord::Base
  belongs_to :site
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports
end

class Site < ActiveRecord::Base
  belongs_to  :state
  belongs_to  :district
  has_many :users
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports


  # select data from most recent stock report
  def most_recent_stock_report
    stock_reports.order(:created_at).last
  end

end

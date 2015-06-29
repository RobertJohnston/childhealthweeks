class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports

  def stock_reports_total(stock)
    stock_reports.sum(stock)
  end


end

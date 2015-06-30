class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports

  # Current population = most recent report
  def population_reports_total(population)
    population_reports.sum(population)
  end

  # Current stocks = most recent report
  def stock_reports_total(stock)
    stock_reports.sum(stock)
  end

  # Program activity = total of program delivery activities of the week
  def program_reports_total(program)
    program_reports.sum(program)
  end

end

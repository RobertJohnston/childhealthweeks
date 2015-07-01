class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
  has_many :population_reports
  has_many :stock_reports
  has_many :program_reports

    # Program activity = total of program delivery activities of the week
  def program_reports_total(program)
    program_reports.sum(program)
  end

  # Current stocks = most recent report
  # This loop is very slow
  def stock_reports_total(stock)
    total = 0
    sites.each do |site|
      total += site.most_recent_stock_report.read_attribute(stock) || 0
    end
    total
  end

  # Current population = most recent report
  def population_reports_total(population)
    total = 0
    sites.each do |site|
      total += site.most_recent_population_report.read_attribute(population) || 0
    end
    total
  end




end

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

  def program_reports_total(program)
    program_reports.sum(program)
  end

  def most_recent_population_report
    population_reports.order(:created_at).last
  end

  def percent_population(population)
    percent = most_recent_population_report.read_attribute(population).to_f / most_recent_population_report.read_attribute(:total_population) * 100
  end

  def vitared_target_pop
    target_pop = most_recent_population_report.read_attribute(:child_population) * 0.1
  end

  def vitablue_target_pop
    target_pop = most_recent_population_report.read_attribute(:child_population) * 0.8
  end

  def deworming_target_pop
    target_pop = most_recent_population_report.read_attribute(:child_population) * 0.9
  end

  def iron_folate_target_pop
    target_pop = most_recent_population_report.read_attribute(:woman_population) * 0.05
  end

  def child_coverage(program)
    child_percent_coverage = program_reports_total(program) / most_recent_population_report(:child_population)
  end

end

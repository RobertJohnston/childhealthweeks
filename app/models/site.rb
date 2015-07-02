class Site < ActiveRecord::Base
  # Here dates of child health week are hard coded.
  # These need to be entered into the database.
  START_DATE = "2015-06-01".to_date
  END_DATE = "2015-06-05".to_date

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
    # number_with_precision(percent, precision: 2, separator: ',', delimiter: '.')
    sprintf('%.1f', percent)
  end

  def six_to_11_target_pop
    target_pop = most_recent_population_report.read_attribute(:child_population) * 0.1
    sprintf('%.0f', target_pop)
  end

  def twelve_to_59_target_pop
    target_pop = most_recent_population_report.read_attribute(:child_population) * 0.8
    sprintf('%.0f', target_pop)
  end

  def pregnant_woman_target_pop
    target_pop = most_recent_population_report.read_attribute(:woman_population) * 0.05
    sprintf('%.0f', target_pop)
  end

  def child_coverage(program)
    child_percent_coverage = program_reports_total(program) / most_recent_population_report(:child_population)
  end

# COMPLETE REPORTING
# for this current version of app, we assume that we are on or after 7th June 2015.



# if created_at(intervention) is between time 1st June and 6th June
# if created_at(intervention) is time 1st June and date.now
# then complete = 100
# date1 = "2012-01-01".to_date
# @dates = (Date.today..Date.today + 60.days)


#self.program_reports.where(:report_date => start_date..Datetime.now).each do |report|
# If no report is sent, then there will be no report date.

  # STOCKS REPORTS

  def stock_reports_per_day
    stock_items_complete = {}
    stock_reports = stock_reports_between_dates(START_DATE, END_DATE)
    (START_DATE..END_DATE).each do |date|
      current_date_stock_report = stock_reports.find{|s| s.created_at.to_date == date }
      stock_items_complete[date] = {
       vitamin_a_blue: stock_item_complete(current_date_stock_report, :vitamin_a_blue),
       vitamin_a_red: stock_item_complete(current_date_stock_report, :vitamin_a_red),
       deworming: stock_item_complete(current_date_stock_report, :deworming),
       iron_folate: stock_item_complete(current_date_stock_report, :iron_folate_red),
     }
    end
    stock_items_complete
  end

# District level averages
# stock_report.inject(0.0) { |sum, :vitamin_a_red | sum + :vitamin_a_red } / stock_report.size

  def stock_reports_between_dates(start_date, end_date)
    stock_reports.where("created_at >= ? AND created_at <= ?", start_date, end_date)
  end

  def stock_item_complete(stock_report, stock_item)
    if stock_report.present? && stock_report.read_attribute(stock_item).present?
      100
    else
      0
    end
  end

  # correct name of method
  def average_score(stock)
    res = 0
    stock_reports_per_day.values.each do |hash|
      res += hash[stock]
    end
    res / stock_reports_per_day.values.size
  end

  #  hash  [{"2012-02-15" => 35"}, {"2012-02-22" => 22"}, {"2012-02-28" => 90"}]
  #  Hash[myhash.map { |k,v| [k, v.map(&:last).inject(:+) / v.size] }]
  # => {"2011-02-15"=>35, "2011-02-22"=>22, "2011-02-28"=>90}

  # Hash[myhash.map{ |date, list| [date, list.sum(&:last)/list.size] }]



  # STOCK REPORTS
  # def calculate_program_complete
  #   self.stock_reports.where(:report_date => start_date..Datetime.now).each do |report|
  #     # loop 5 times -> 5 reports
  #     report.vitamin_a_red.exists? ? vitamin_a_red_complete = 100 : vitamin_a_red_complete = 0
  #     report.vitamin_a_blue.exists? ? vitamin_a_blue_complete = 100 : vitamin_a_blue_complete = 0
  #     report.deworming.exists? ? deworming_complete = 100 : deworming_complete = 0
  #     report.iron_folate.exists? ? iron_folate_complete = 100 : iron_folate_complete = 0
  #   end
  # end

  # TIMELY REPORTING
  # a report is expected on the day immediately following the activity date.
  # activities on 5th June should be reported on 6th June.
  # if created_at (date) < report_date (+1 day) then timely = true

  # STOCK OUTS
  # if most_recent_stock_report(stock) <= 0 then stock_out = true

  # ADEQUATE STOCK
  # if target_population(intervention) - program(intervention) < most_recent_stock_report(stock) then stock_adequate = true

  # COVERAGE
  # program(intervention) / target_population(intervention)

end

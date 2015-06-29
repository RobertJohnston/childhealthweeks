class District < ActiveRecord::Base
  belongs_to :state
  has_many :sites

  def stock_reports_total(stock)
    stock_reports.sum(stock)
  end

end

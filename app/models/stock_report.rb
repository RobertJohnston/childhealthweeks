class StockReport < ActiveRecord::Base

  belongs_to :user
  belongs_to :site
  belongs_to :state
  belongs_to :district

end


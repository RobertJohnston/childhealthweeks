class StockReport < ActiveRecord::Base
  belongs_to :user
  belongs_to :site

  def self.national

  end

  def state
    # state level report
  end

  def district
    # district level report
  end


end


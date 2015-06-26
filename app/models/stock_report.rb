class StockReport < ActiveRecord::Base

  belongs_to :user
  belongs_to :site
  belongs_to :state
  belongs_to :district

  before_create :add_ids

  private

  def add_ids

  end
end


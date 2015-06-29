class StockReport < ActiveRecord::Base

  belongs_to :user
  belongs_to :site
  belongs_to :state
  belongs_to :district

  # before_create :add_ids

  private

  # add state and district ids to the seed or API imported data.
  # this code is currently in the seed.db
  # def add_ids

  # end
end


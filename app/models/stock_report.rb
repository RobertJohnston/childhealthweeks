class StockReport < ActiveRecord::Base

  belongs_to :user
  belongs_to :site
  belongs_to :state
  belongs_to :district

  # ONLY add this if we have the add_ids method in the model
  # to add the state and district ids to the stocks and program data
  # before_create :add_ids

  private

  # add state and district ids to the seed or API imported data.
  # this code is currently in the seed.db
  # def add_ids

  # end
end


class District < ActiveRecord::Base
  has_one :state
  has_many :sites
end

class Population < ActiveRecord::Base
  has_one :user
  has_one :site
end

class State < ActiveRecord::Base
  has_many :districts
  has_many :sites
end

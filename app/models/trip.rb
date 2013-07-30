class Trip < ActiveRecord::Base
  has_one :weather
  has_one :deal
  has_one :mapping
  attr_accessible :endzipcode, :startzipcode
end

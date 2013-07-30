class Trip < ActiveRecord::Base
  belongs_to :weather
  belongs_to :deal
  belongs_to :mapping
  attr_accessible :endzipcode, :startzipcode
end

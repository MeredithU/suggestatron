class Mapping < ActiveRecord::Base

  attr_accessible :location, :trip_id, :longitude, :latitude, :gmaps

  belongs_to :trip

  acts_as_gmappable

  def gmaps4rails_address
    "#{trip.startzipcode}"
  end
end

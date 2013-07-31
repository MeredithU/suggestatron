class Mapping < ActiveRecord::Base

  attr_accessible :location, :trip_id

  belongs_to :trip

  acts_as_gmappable

  def gmaps4rails_address
    "#{endzipcode}"
  end
end

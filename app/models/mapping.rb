class Mapping < ActiveRecord::Base

  attr_accessible :location

  acts_as_gmappable

  def gmaps4rails_address
    "#{endzipcode}"
  end
end

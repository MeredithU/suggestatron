class Mapping < ActiveRecord::Base

  attr_accessible :location

  belongs_to :trips

  acts_as_gmappable

  def gmaps4rails_address
    "#{endzipcode}"
  end
end

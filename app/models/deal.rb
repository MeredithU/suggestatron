class Deal < ActiveRecord::Base

  attr_accessible :localdeal, :trip_id

  belongs_to :trip

  include HTTParty
  require 'open-uri'
  require 'json'




private

  def get_local_deal
    HTTParty.get(get_local_deal_url)
  end

  def get_local_deal_url
    "http://api.8coupons.com/v1/getdeals?key=49bf9fac2c055141e65a2d9bd03064a1cd06069f59b9941403b24ea60ffcb8296bb6d954a145f830ed072500d4d213f8&zip=#{trip.endzipcode}&mileradius=20&limit=3&orderby=radius&categoryid=2,6"

end

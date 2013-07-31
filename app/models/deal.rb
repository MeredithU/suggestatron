class Deal < ActiveRecord::Base

  attr_accessible :localdeal, :trip_id, :dealtitle, :dealname, :dealaddress, :dealcity

  belongs_to :trip

  include HTTParty
  require 'open-uri'
  require 'json'

  def get_deal_data
    self.dealtitle = get_local_deal.first['dealTitle']
    self.dealname = get_local_deal.first['name']
    self.dealaddress = get_local_deal.first['address']
    self.dealcity = get_local_deal.first['city']
    save
  end


private
  def get_local_deal
    HTTParty.get(local_deal_url)
  end

  def local_deal_url
    "http://api.8coupons.com/v1/getdeals?key=49bf9fac2c055141e65a2d9bd03064a1cd06069f59b9941403b24ea60ffcb8296bb6d954a145f830ed072500d4d213f8&zip=#{trip.endzipcode}&mileradius=20&limit=3&orderby=radius&categoryid=2,6"
  end
end

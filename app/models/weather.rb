class Weather < ActiveRecord::Base

  attr_accessible :forecast, :temperature

  belongs_to :trips

  def get_zip_weather
    HTTParty.get("http://api.wunderground.com/api/80c09000360316c5/geolookup/conditions/q/#{endzipcode}.json")
  end

  def conditions
    temperature = zip_weather['current_observation']
  end


end

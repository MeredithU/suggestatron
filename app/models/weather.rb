class Weather < ActiveRecord::Base

  attr_accessible :forecast, :temperature, :trip_id

  belongs_to :trip

  def get_weather_data
    self.temperature = get_weather['current_observation']['temperature_string']
    self.forecast = get_weather['current_observation']['weather']
    save
  end

private
  def get_weather
    HTTParty.get(weather_url)
  end

  def weather_url
    "http://api.wunderground.com/api/80c09000360316c5/geolookup/conditions/q/#{ trip.endzipcode }.json"
  end
end

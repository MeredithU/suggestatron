class TripsController < ApplicationController

  def index
    @trip = Trip.new

  end

  def create
    @trip = Trip.new(params[:trip])
    if @trip.save
      # Call weather API
      @weather = @trip.create_weather
      @weather.get_weather_data

      # Call eight coupons API
      @deal = @trip.create_deal
      @deal.get_deal_data

      flash[:notice] = "Trip has been created."
      render :action => "show"
    else
      #TBD
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end


end

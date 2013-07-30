class TripsController < ApplicationController

before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @trip = Trip.new

  end

  def create
    @trip.user = current_user
  end


end

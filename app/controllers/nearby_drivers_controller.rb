class NearbyDriversController < ApplicationController
  def index
    render json: {
      nearbyDrivers: Driver.matching(nearby_drivers_params)
    }
  end

  private

  def nearby_drivers_params
    {
      lat: params[:lat].to_i,
      lng: params[:lng].to_i,
    }
  end
end

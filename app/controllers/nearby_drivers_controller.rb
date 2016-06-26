class NearbyDriversController < ApplicationController
  def index
    render json: {
      nearbyDrivers: Driver.all
      # FIXME: filter only data we want, use a serializer and find the correct "nearby" or "available" drivers
    }
  end
end

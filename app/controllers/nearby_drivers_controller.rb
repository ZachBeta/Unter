class NearbyDriversController < ApplicationController
  def index
    render json: {
      nearbyDrivers:
      [
        {
          lat: 41.3083,
          lng: -72.9279
        },{
          lat: 41.324668,
          lng: -72.9123427
        },{
          lat: 41.3154237,
          lng: -72.9209239
        }
      ]
    }
  end
end

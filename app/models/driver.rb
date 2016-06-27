class Driver < ActiveRecord::Base
  # NOTE: as this is an MVP, this will do naive calculations in memory for now
  # future usage would involve https://github.com/rgeo/activerecord-postgis-adapter
  def self.closest(lat: 0, lng: 0)
    Driver.all.sort_by { |driver|
      Math.sqrt((lat - driver.lat)**2 + (lng - driver.lng)**2)
    }
  end
end

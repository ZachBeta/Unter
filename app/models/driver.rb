class Driver < ActiveRecord::Base
  def self.closest(lat: 0, lng: 0)
    Driver.all.sort_by { |driver|
      Math.sqrt((lat - driver.lat)**2 + (lng - driver.lng)**2)
    }
  end

  def self.available
    where(available: true)
  end

  def self.matching(lat: 0, lng: 0)
    self.available.closest(lat: lat, lng: lng).take(5)
  end
end

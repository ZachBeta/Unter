require 'rails_helper'

describe Driver, type: :model do
  describe '.closest' do
    it 'returns the closest drivers ordered' do
      closer = Driver.create(lat: 1, lng: 1)
      further = Driver.create(lat: 1, lng: 2)

      closest = Driver.closest(lat: 0, lng: 0)
      expect(closest).to eq([closer, further])
    end
  end

  describe '.available' do
    it 'returns drivers that are marked as available' do
      not_available_driver = Driver.create(available: false, lat: 0, lng: 0)
      available_driver = Driver.create(available: true, lat: 0, lng: 0)

      available = Driver.available
      expect(available).to include(available_driver)
      expect(available).not_to include(not_available_driver)
    end
  end

  describe '.matching' do
    it 'returns the closest 5 available drivers' do
      (-1..1).each do |lat|
        (-1..1).each do |lng|
          Driver.create(available: true, lat: lat, lng: lng)
        end
      end
      # We expect only the cars directly next to the point to match
      # n, y, n
      # y, y, y
      # n, y, n

      matching = Driver.matching(lat: 0, lng: 0)
      expect(matching.size).to eq(5)
      expect(matching).to include(Driver.find_by(lat: 0, lng: 0))
      expect(matching).to include(Driver.find_by(lat: -1, lng: 0))
      expect(matching).to include(Driver.find_by(lat: 0, lng: -1))
      expect(matching).to include(Driver.find_by(lat: 1, lng: 0))
      expect(matching).to include(Driver.find_by(lat: 0, lng: 1))
    end
  end
end

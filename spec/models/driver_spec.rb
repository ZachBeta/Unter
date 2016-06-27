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
end

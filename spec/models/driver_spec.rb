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
end

require_relative '../app'

describe CircleCoordinatesGen do
  before :all do
    @test_object_001 = CircleCoordinatesGen.new(5, 15)
  end

  describe 'generate coordinates' do
    it 'returns 6 coordinates when the object is set for 5 coordinates (zero based)' do
      expect(@test_object_001.generate_coordinates.size).to eq(6)
    end
  end

  describe 'calculate_radius' do
    it 'returns the correct radius based on an x ( width ) and y ( height ) coordinate' do
      expect(@test_object_001.calculate_radius(6, 5)).to eq(7.810249675906654)
    end
  end
end

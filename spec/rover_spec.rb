require 'rover'

RSpec.describe Rover do
  let(:rover) { Rover.new(x_coord: 1, y_coord: 1, direction: 'N') }

  it 'has an x coordinate' do
    expect(rover.x_coord).to eq(1)
  end
  it 'has a y coordinate' do
    expect(rover.y_coord).to eq(1)
  end
  it 'has a direction' do
    expect(rover.direction).to eq('N')
  end
end

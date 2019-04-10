require 'rover'

RSpec.describe 'Rover' do
   it 'has an x coordinate' do
       rover = Rover.new(x_coord:'1')
       expect(rover.x_coord).to eq('1')
   end
   it 'has a y coordinate' do
       rover = Rover.new(y_coord: '1')
       expect(rover.y_coord).to eq('1')
   end
   it 'has a direction' do
       rover = Rover.new(direction: 'N')
       expect(rover.direction).to eq('N')
   end
end

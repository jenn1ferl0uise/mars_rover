require 'plateau'

RSpec.describe 'Plateau' do
    it 'has a maximum x coordinate' do
        plateau = Plateau.new(x_max:'5')
        expect(plateau.x_max).to eq('5')
    end
    it 'has a maximum y coordinate' do
        plateau = Plateau.new(y_max: '5')
        expect(plateau.y_max).to eq('5')
    end
    it 'has a minumum x coordinate' do
        plateau = Plateau.new(x_min:0)
        expect(plateau.x_min).to eq(0)
    end
    it 'has a minimum y coordinate' do
        plateau = Plateau.new(y_min: 0)
        expect(plateau.y_min).to eq(0)
    end
 end
 
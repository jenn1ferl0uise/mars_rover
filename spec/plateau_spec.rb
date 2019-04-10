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
 end
 
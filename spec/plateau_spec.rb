require 'plateau'

RSpec.describe Plateau do
    let(:plateau) { Plateau.new(x_max:5, y_max:5, x_min:0, y_min:0) }
    it 'has a maximum x coordinate' do
        expect(plateau.x_max).to eq(5)
    end
    it 'has a maximum y coordinate' do
        expect(plateau.y_max).to eq(5)
    end
    it 'has a minumum x coordinate' do
        expect(plateau.x_min).to eq(0)
    end
    it 'has a minimum y coordinate' do
        expect(plateau.y_min).to eq(0)
    end
 end
 
require 'plateau'

RSpec.describe Plateau do
  let(:plateau) { Plateau.new(x_max: 5, y_max: 5, x_min: 0, y_min: 0) }
  describe 'Plateau' do
    it 'is not nil' do
      expect(plateau.nil?).to eq(false)
    end
  end
  describe 'Plateau coordinates' do
    it 'has limits set for x coordinates, which are integers' do
      expect(plateau.x_max).to eq(5).and be_a(Integer)
      expect(plateau.x_min).to eq(0).and be_a(Integer)
    end
    it 'has limits set for y coordinates, which are integers' do
      expect(plateau.y_max).to eq(5).and be_a(Integer)
      expect(plateau.y_min).to eq(0).and be_a(Integer)
    end
  end
end

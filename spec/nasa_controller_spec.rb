require 'nasa_controller'

RSpec.describe NasaController do
    let(:nasa_controller) { NasaController.new() }
    it 'is not nil' do
        expect(nasa_controller).not_to be_nil
    end
    describe 'nasa input' do
        it 'is a string and is not nil' do
            expect(nasa_controller.nasa_input).to be_a(String)
            expect(nasa_controller.nasa_input).not_to be_nil
        end
    end
    it 'has an output from the rover' do
    end
    it 'gives string of instructions to the rover L, R & M' do
    end
    it 'does not move another rover before finishing to move the first rover' do
    end
    it 'recieves an output string from the rover when it stops moving' do
    end
 end
 
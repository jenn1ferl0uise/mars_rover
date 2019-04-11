require_relative 'plateau'
require_relative 'rover'


class NasaController
    def initialize(attributes ={})
        @nasa_input = attributes[:nasa_input]    
        @rover_output = attributes[:rover_output]
        @plateau = Plateau.new
        @rover = Rover.new
    end

    def interpret_nasa_input
    @nasa_input = File.open(nasa_input.txt).split("\n")
    @plateau_limit = @nasa_input.first.spilt
    @position = @nasa_input(1).split
    @instructions = @nasa_input(2)
    end
    def set_plateau_limit
        @plateau.x_max == @plateau_limit(0).to_i
        @plateau.y_max == @plateau_limit(1).to_i
    end

    def select_rover
        @rover.x_coord = @position(0).to_i
        @rover.y_coord = @position(1).to_i
        @rover.direction = @position(2)
    end

    def nasa_instructions
        @rover.nasa_input(@instructions)
    end

    def rover_end_position
        @rover_output = @rover.rover_output
    end

end
require_relative 'plateau'
require_relative 'rover'


class NasaController
    def initialize(attributes ={})
        @nasa_input = attributes[:nasa_input]    
        @rover_output = attributes[:rover_output]
        @plateau = Plateau.new
        @rover = Rover.new
    end

    def nasa_input
    @nasa_input = "
5 5
3 1 N
MLMLMMM
"
    end
    def set_plateau_limit
        limit = @nasa_input.split
        @plateau.x_max == limit(0).to_i
        @plateau.y_max == limit(1).to_i
    end

    def select_rover
        position = @nasa_input.split
        @rover.x_coord = position(2).to_i
        @rover.y_coord = position(3).to_i
        @rover.direction = position(4)
    end

    def nasa_instructions
        instructions = @nasa_input.split
        @rover.nasa_input(instructions(5))
    end


end
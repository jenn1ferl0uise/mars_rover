require_relative 'plateau'

class Rover
    attr_reader :x_coord, :y_coord, :direction
    def initialize(attributes = {})
        @x_coord = attributes[:x_coord]
        @y_coord = attributes[:y_coord]
        @direction = attributes[:direction]
        @plateau = Plateau.new
    end

    def move_forward
        case @direction
        when 'N' : @y_coord += 1 if @y_coord < @plateau.y_max
        when 'S' : @y_coord -= 1 if @y_coord < @plateau.y_min
        when 'E' : @x_coord += 1 if @x_coord < @plateau.x_max
        when 'W' : @x_coord -= 1 if @x_coord < @plateau.x_min
        else
            'Error'
        end
    end

    def turn_left
        case @direction
        when 'N' : @direction == 'E' 
        when 'E' : @direction == 'S' 
        when 'S' : @direction == 'W' 
        when 'W' : @direction == 'N' 
        else
            'Error'
        end
    end

    def turn_right
        case @direction
        when 'N' : @direction == 'W' 
        when 'W' : @direction == 'S' 
        when 'S' : @direction == 'E' 
        when 'E' : @direction == 'N' 
        else
            'Error'
        end
    end

    def nasa_input(instructions)
        instructions.each_char do |input|
            move_forward if input == 'M'
            turn_left if input == 'L'
            turn_right if input == 'R'
        end
    end 

    def final_position
        "#{@x_coord} #{@y_coord} #{@direction} "
    end
end
   
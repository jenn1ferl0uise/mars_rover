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
        when 'N'
            @y_coord += 1 if @y_coord < @plateau.y_max
        when 'S'
            @y_coord -= 1 if @y_coord < @plateau.y_min
        when 'E'
            @x_coord += 1 if @x_coord < @plateau.x_max
        when 'W'
            @x_coord -= 1 if @x_coord < @plateau.x_min
        end
    end

    def turn_left
    end

    def turn_right
    end

    def nasa_input(string)
        string.each_char do |input|
            move_forward if input == 'M'
            turn_left if input == 'L'
            turn_right if input == 'R'
        end
    end 
end
   
class Rover
    attr_reader :x_coord, :y_coord, :direction
    def initialize(attributes = {})
      @x_coord = attributes[:x_coord]
      @y_coord = attributes[:y_coord]
      @direction = attributes[:direction]
    end
   end
   
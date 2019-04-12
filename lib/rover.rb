class Rover
  attr_accessor :x_coord, :y_coord, :direction, :plateau, :instructions
  def initialize(attributes = {})
    @x_coord = attributes[:x_coord]
    @y_coord = attributes[:y_coord]
    @direction = attributes[:direction]
    @instructions = attributes[:instructions]
  end

  def nasa_move_rover(string)
    string.each_char do |instruction|
      move_forward if instruction == 'M'
      turn_left if instruction == 'L'
      turn_right if instruction == 'R'
    end
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
    else
      raise Exception 'Error! You cannot pass the limits of the plateau!'
    end
  end

  def turn_right
    case @direction
    when 'N' then @direction == 'E'
    when 'E' then @direction == 'S'
    when 'S' then @direction == 'W'
    when 'W' then @direction == 'N'
    end
  end

  def turn_left
    case @direction
    when 'N' then @direction == 'W'
    when 'W' then @direction == 'S'
    when 'S' then @direction == 'E'
    when 'E' then @direction == 'N'
    end
  end

  def final_position
    "#{@x_coord} #{@y_coord} #{@direction}"
  end
end

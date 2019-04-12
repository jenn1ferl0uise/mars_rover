require_relative 'plateau'
require_relative 'rover'
# require 'pry-byebug'

class NasaController
  def initialize(attributes = {})
    @nasa_input = attributes[:nasa_input]
    @rover_output = attributes[:rover_output]
    @plateau = Plateau.new
    @rover = Rover.new
  end

  def interpret_nasa_information
    data = File.read(@nasa_input)
    information = data.split("\n")
    @plateau_limit = information.shift
    set_plateau_limit
    @positions = []
    @instructions = []
    information.each_with_index do |element, index|
      if index.even?
        @positions << element
      else
        @instructions << element
      end
    end
    select_rover
  end

  def set_plateau_limit
    @limit = @plateau_limit.split
    @plateau.x_max = @limit[0].to_i
    @plateau.y_max = @limit[1].to_i
  end

  def select_rover
    @positions.each_with_index do |position, index|
      @rover.x_coord = position[0].to_i
      @rover.y_coord = position[2].to_i
      @rover.direction = position[4]
      @rover.plateau = @plateau
      @rover.instructions = @instructions[index]
      nasa_instructions
    end
  end

  def nasa_instructions
    @rover.nasa_move_rover(@rover.instructions)
    rover_end
  end

  def rover_end
    File.write(@rover_output, @rover.final_position)
  end
end

require_relative 'plateau'
require_relative 'rover'

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
    # [ "5 5", "1 2 N", "LMLMLMLMM", "3 3 E", "MMRMMRMRRM"]
    @plateau_limit = information.slice!(0)
    information.each_slice(2) do |element|
      @position = element[0]
      @instructions = element[1]
    end
  end

  def set_plateau_limit
    @plateau.x_max = @plateau_limit[0]
    @plateau.y_max = @plateau_limit[1]
    @plateau_limit
  end

  def select_rover
    @rover.x_coord = @position[0]
    @rover.y_coord = @position[1]
    @rover.direction = @position[2]
    @position
  end

  def nasa_instructions
    @rover.nasa_input(@instructions)
  end

  def rover_end
    @rover_output = @rover.final_position
    @rover_output
  end
end

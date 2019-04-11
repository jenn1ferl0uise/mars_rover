class Router
  def initialize(nasa_controller, plateau, rover)
    @nasa_controller = nasa_controller
    @rover = rover
    @plateau = plateau
  end

  def run
    @nasa_controller.interpret_nasa_information
    limit = @nasa_controller.set_plateau_limit
    puts "LIMIT: #{limit}"
    rover = @nasa_controller.select_rover
    puts "ROVER1: #{rover}"
    instructions = @nasa_controller.nasa_instructions
    puts "NASA: #{instructions}"
    @nasa_controller.rover_end
  end
end

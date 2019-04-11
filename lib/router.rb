class Router
  def initialize(nasa_controller)
    @nasa_controller = nasa_controller
  end

  def run
    @nasa_controller.interpret_nasa_information
    @nasa_controller.set_plateau_limit
    until @nasa_controller.nasa_input.nil?
      @nasa_controller.select_rover
      @nasa_controller.nasa_instructions
      @nasa_controller.rover_end
    end
  end
end

class Router
  def initialize(nasa_controller)
    @nasa_controller = nasa_controller
  end

  def run
    @nasa_controller.interpret_nasa_information
  end
end

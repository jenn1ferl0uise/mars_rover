require_relative 'lib/nasa_controller'
require_relative 'lib/plateau'
require_relative 'lib/rover'
require_relative 'lib/router'

test_file = 'nasa_input.txt'

nasa_controller = NasaController.new(nasa_input: test_file)
rover = Rover.new(nasa_input: test_file)
plateau = Plateau.new

router = Router.new(nasa_controller, plateau, rover)

router.run

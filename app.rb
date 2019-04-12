require_relative 'lib/nasa_controller'
require_relative 'lib/router'

input = 'nasa_input.txt'
output = 'rover_output.txt'

nasa_controller = NasaController.new(nasa_input: input, rover_output: output)

router = Router.new(nasa_controller)

router.run

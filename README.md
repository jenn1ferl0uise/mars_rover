# mars_rover


# 1. In terminal run 'ruby app.rb'

# 2. This will first instanciate the NasaController with the 'nasa_input.txt' and 'rover_output.txt' files.

# 3. The Router will be initialized and will be run.

# 4. Firstly, this will...
#   - open the NASA input file
#   - read the plateau's dimentions (limits)
#   - seperate the the rovers positions and instructions for each rover from the input.

# 5. Using this data, each rover is selected and given instructions on how to move.

# 6. Each rover is then moved (one by one) on the plateau using the string of commands given by nasa, which contain instructions ('M' to make it move 1 block, 'L' to turn left, 'R' to turn right).

# 7. The rover's final coordinates and heading will be given in the output file ('rover_output.txt').

# 8. If the rover tries to move past the plateau's limit, it will raise an error.

(Ok so, the error is not actually working, and the output only shows the position of the last selected rover for some reason...)

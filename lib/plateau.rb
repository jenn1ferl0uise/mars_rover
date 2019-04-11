class Plateau
  attr_accessor :x_max, :y_max, :x_min, :y_min
  def initialize(attributes = {})
    @x_max = attributes[:x_max]
    @y_max = attributes[:y_max]
    @x_min = 0
    @y_min = 0
  end
end

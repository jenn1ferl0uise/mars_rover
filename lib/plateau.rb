class Plateau
    attr_reader :x_max, :y_max
    def initialize(attributes = {})
        @x_max = attributes[:x_max]
        @y_max = attributes[:y_max]
    end
end
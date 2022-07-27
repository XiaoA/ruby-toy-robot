module ToyRobot
  class Robot
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -=1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -=1
    end

    def move
      send("move_#{@direction.downcase}")
    end

    def turn_left
      @direction = DIRECTIONS[DIRECTIONS.index(@direction) - 1]
    end
  end
end

module ToyRobot
  class Robot
    attr_reader :east

    def initialize(east = 0)
      @east = east
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -=1
    end
  end
end

module ToyRobot
  class Command
    def self.process(command, *args)
      /\APLACE (?<x>\d+),(?<y>\d+),(?<direction>\w+)\Z/ =~ command
      [:place, $1.to_i, $2.to_i, $3]
    end
  end
end

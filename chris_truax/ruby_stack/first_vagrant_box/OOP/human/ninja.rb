require_relative 'human'
class Ninja < Human
    def initialize
        super
        self.stealth = 175
    end
    def get_away
        self.health -= 15
        self
    end
    def steal object
        if object.class.ancestors.include?(Human)
            self.health += 10
        end
        self
    end
end

ninja1 = Ninja.new
jim = Human.new
# ninja1.get_away
puts ninja1.health
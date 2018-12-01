require_relative 'human'

class Ninja < Human
  attr_accessor :strength, :intelligence, :health, :stealth

  def initialize
    super
    @stealth = 175
  end

  def steal(target)
    attack(target)
    @health += 10
    self
  end

  def get_away
    @health -= 15
    self
  end

end

ninja1 = Ninja.new
ninja2 = Ninja.new

ninja1.steal(ninja2)
ninja1.get_away
ninja2.display_health

class Human
  attr_accessor :strength, :intelligence, :health, :stealth

  def initialize
    @strength     = 3
    @stealth      = 3
    @intelligence = 3
    @health       = 100
  end

  def attack(target)
    if target.class.ancestors.include?(Human)
      target.health -= 5
    else
      puts "Cannot attack #{target}!"
    end
    self
  end

  def display_health
    p @health
    self
  end
end

#
# bert  = Human.new
# ernie = Human.new
#
# bert.attack(ernie)
# ernie.display_health
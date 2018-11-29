require_relative 'human'

class Wizard < Human
  attr_accessor :strength, :intelligence, :health, :stealth

  def initialize
    super
    @intelligence = 25
    @health       = 50
  end

  def heal
    @health += 10
    self
  end

  def fireball(target)
    if target.class.ancestors.include?(Human)
      target.health -= 20
    else
      puts "Cannot attack #{target} with fireball!"
    end
    self
  end

end

dumbledore = Wizard.new
voldemort  = Wizard.new

dumbledore.fireball(voldemort)
voldemort.display_health

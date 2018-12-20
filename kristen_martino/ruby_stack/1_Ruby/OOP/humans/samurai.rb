require_relative 'human'

class Samurai < Human
  attr_accessor :strength, :intelligence, :health, :stealth
  @@how_many = 0

  def initialize
    super
    @health    = 200
    @@how_many += 1
  end

  def self.how_many
    p @@how_many
  end

  def meditate
    @health = 200
    self
  end

  def death_blow(target)
    if target.class.ancestors.include?(Human)
      target.health = 0
    else
      puts "Cannot attack #{target} with death blow!"
    end
    self
  end
end

samurai1 = Samurai.new
samurai2 = Samurai.new


samurai1.death_blow(samurai2)
samurai2.display_health.meditate.display_health
Samurai.how_many
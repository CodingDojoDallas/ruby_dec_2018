class Mammal
  attr_reader :health
  def initialize
    @health = 150
  end

  def display_health
    puts @health
    self
  end
end

# test = Mammal.new.display_health

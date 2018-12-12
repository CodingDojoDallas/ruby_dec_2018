class Human
  # your code here
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
    else
      puts "Cannot attack this unknown object"
    end
    self
  end

  def display_health
    puts "My health is at #{@health}"
    self
  end

end

eric = Human.new
# p eric.class.ancestors.include?(Human)

require_relative 'mammal'

class Dog < Mammal
  def pet
    @health+=5
    self
  end

  def walk
    @health-=1
    self
  end

  def run
    @health-=10
    self
  end
end

golden = Dog.new
# golden.pet.walk.run.display_health
golden.walk.walk.walk.run.run.pet.display_health #132

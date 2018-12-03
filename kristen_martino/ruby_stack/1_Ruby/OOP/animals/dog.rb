require_relative 'mammal'
class Dog < Mammal
  def health
    @health
  end

  def pet
    @health += 5
    self
  end

  def walk
    @health -= 1
    self
  end

  def run
    @health -= 10
    self
  end

end

my_dog = Dog.new
my_dog.walk.walk.walk.pet.display_health
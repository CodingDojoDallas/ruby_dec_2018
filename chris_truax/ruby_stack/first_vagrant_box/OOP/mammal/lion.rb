require_relative 'mammal'
class Lion < Mammal
    def initialize
        super
        self.health = 170
    end
    def eat_humans
        self.health += 20
        self
    end
    def attack_town
        self.health -= 50
        self
    end
    def fly
        self.health -= 10
        self
    end
    def display_health
        puts "This is a lion"
        super
    end
end
lion1 = Lion.new
lion1.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
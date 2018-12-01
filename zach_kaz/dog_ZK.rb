require_relative "mammal_ZK"

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
dog=Dog.new
dog.walk.walk.walk.run.run.pet.display_health

class Lion < Mammal
    def initialize
        @health=170
        self
    end
    def fly
        @health-=10
        self
    end
    def attack_town
        @health-=50
        self
    end
    def eat_humans
        @health+=20
        self
    end
    def display_health
        puts "This is lion"
        super
    end
end
lion=Lion.new
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health



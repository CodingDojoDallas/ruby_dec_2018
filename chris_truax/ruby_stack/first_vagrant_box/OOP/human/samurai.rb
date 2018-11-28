require_relative 'human'
class Samurai < Human
    @@samurai = 0
    def initialize
        super
        self.health = 200
        @@samurai += 1
    end
    def meditate
        self.health = 200
        self
    end
    def death_blow object
        if object.class.ancestors.include?(Human)
            object.health = 0
        end
        self
    end
    def self.how_many
        puts @@samurai
    end
end

samurai = Samurai.new
samurai2 = Samurai.new
Samurai.how_many
samurai.death_blow samurai2
samurai2.meditate
puts samurai2.health
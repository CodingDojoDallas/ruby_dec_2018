class Human
    attr_accessor :strength, :stealth, :intelligence, :health
    def initialize
        @strength=30
        @stealth=10
        @intelligence=20
        @health=100
    end
    def attack (victim)
        if victim.class.ancestors.any?{|i|i==Human}
        victim.health-=10
        end
    return self
    end
end

class Wizard < Human
    def initialize
        super
        @health=50
        @intellignece=24
    end
    def heal
        @health+=10
        self
    end
    def fireball(victim)
        victim.health-=20
        self
    end
end

class Ninja < Human
    def initialize
        super
        @stealth=175
    end
    def steal(victim)
        self.attack(victim)
        @health+=10
    end
    def get_away
        @health-=15
    end
end

class Samurai < Ninja
    @@number=0
    def initialize
        super
        @health=200
        @@number+=1
    end
    def death_blow(victim)
        self.attack(victim)
        victim.health=0
    end
    def meditate
        if @health<200
            @health=200
        end
    end
    def how_many
        puts @@number
    end
end

gandolf=Wizard.new
daniel=Ninja.new
miyagi=Samurai.new
daniel.steal(gandolf)
daniel.get_away
daniel.attack(gandolf)
miyagi.steal(gandolf)
miyagi.meditate
miyagi.death_blow(gandolf)
puts gandolf.health
puts daniel.health
puts miyagi.health
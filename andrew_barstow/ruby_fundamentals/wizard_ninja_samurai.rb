require_relative 'human'
class Wizard < Human

    def init_extension
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        self
    end

    def fireball(character)
        attack(character, 20)
        self
    end

end

class Ninja < Human

    def init_extension
        @stealth = 175
    end

    def steal(character)
        attack(character)
        @health += 10
        self
    end

    def get_away
        @health -= 15
        self
    end

end

class Samurai < Human

    @@how_many = 0
    def init_extension
        @health = 200
        @@how_many += 1
    end

    def death_blow(character)
        character.health ? attack(character, character.health) : attack(character)
        self
    end

    def meditate
        @health = 200
        self
    end

    def how_many
        @@how_many
    end

end

sam = Samurai.new
wiz = Wizard.new
sam.death_blow(wiz)
p wiz.health
p sam.how_many
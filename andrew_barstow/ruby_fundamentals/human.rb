class Human

    attr_accessor :health, :strength, :stealth, :intelligence

    def initialize 
        @strength = 3
        @stealth = 3
        @intelligence = 3
        @health = 100
        init_extension
    end
    def attack(character, damage = 10)
        #pass a character object here with a health attribute. can be inheritted, or can be a duck type
        begin
            character.health -= damage
        rescue => e
            puts "cannot attack something with no health!"
            puts e.message
        end
    end

    def init_extension
        self
    end

end
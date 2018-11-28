class Human
    attr_accessor :health, :strength, :intelligence, :stealth
    def initialize (strength = 3, intelligence = 3, stealth = 3)
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = 100
    end
    def attack object
        for i in object.class.ancestors
            object.health -= 10 if i == Human
        end
        self
    end
end
george = Human.new
bert = Human.new
george.attack bert
puts bert.health
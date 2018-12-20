require_relative 'human'
class Wizard < Human
    def initialize
        super
        self.health = 50
        self.intelligence = 25
    end
    def heal
        self.health += 10
        self
    end
    def fireball object
        if object.class.ancestors.include?(Human)
            object.health -= 20
        end
        self
    end
end

wizard1 = Wizard.new
wizard2 = Wizard.new
wizard2.fireball wizard1
puts wizard1.health
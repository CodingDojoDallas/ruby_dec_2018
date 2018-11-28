class Mammal
    attr_accessor :health
    def initialize
        @health = 150
    end
    def display_health
        display
    end
    private
    def display
        puts self.health
    end
end
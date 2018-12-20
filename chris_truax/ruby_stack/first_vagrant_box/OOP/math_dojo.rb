class MathDojo 
    attr_accessor :value
    def initialize
        @value = 0
    end
    def add *params
        params.flatten!
        for i in 0...params.length
            self.value = self.value + params[i]
        end
        self
    end
    def subtract *params
        params.flatten!
        for i in 0...params.length
            self.value = self.value - params[i]
        end
        self
    end
    def result
        puts self.value
    end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
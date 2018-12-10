class AppleTree 
    attr_reader :height, :age, :apple_count
    def initialize age
        @age = age
        @height = aged_height
        @apple_count = aged_apples
    end
    def aged_height
        @age * 2
    end
    def aged_apples
        if @age < 10
            if @age > 3
                return (@age - 3) * 2
            end
        end
        0
    end
    def age=(age)
        @age = age
        @height = aged_height
        @apple_count = aged_apples
    end
    def year_gone_by
        @age += 1
        @height = aged_height
        @apple_count = aged_apples
    end
    def pick_apples
        @apple_count = 0
    end
end
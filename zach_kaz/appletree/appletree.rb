class AppleTree
    def initialize
        @height=10
        @apples=0
        @age=0
    end
    attr_accessor :age
    attr_reader :height, :apples
    def year_gone_by
        @age+=1
        @height*=1.1
        if @age>3 and @age<10
            @apples+=2
        end
        self
    end
    def pick_apples
        @apples=0
        self
    end
end

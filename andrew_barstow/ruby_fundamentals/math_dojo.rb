class MathDojo
    attr_reader :result
    def initialize 
        @result = 0
    end
    def add (*nums)
        p nums
        @result += nums[0] if nums.length == 1
        if nums.length > 1
            for elem in nums
                self.add(*elem)
            end
        end
        self
    end
    def subtract (*nums)
        p nums
        @result -= nums[0] if nums.length == 1
        if nums.length > 1
            for elem in nums
                self.subtract(*elem)
            end
        end
        self
    end
end
#p challenge3 = MathDojo.new.add(2,3).subtract(3).result

p challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
p challenge2 = MathDojo.new.add(1).add([3, 5, [7], 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
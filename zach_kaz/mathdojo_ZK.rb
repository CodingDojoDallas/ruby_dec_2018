class MathDojo
@@value=0
    def add(*parems)
        parems.flatten!
        for i in (0..parems.length-1)
            @@value+=parems[i]
        end
        self
    end
    def subtract(*parems)
        parems.flatten!
        for i in parems
            @@value-=i
        end
        self
    end
    def result
        puts @@value
    end
    
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
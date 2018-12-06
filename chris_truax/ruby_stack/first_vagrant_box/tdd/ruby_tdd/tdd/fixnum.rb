class Fixnum 
    def prev 
        self -1
    end 

    def skip 
        self + 2
    end
    
    def double
        self * 2
    end
    
    def my_upto x
        # @output = self..x
        # @output.push(num) 
        (self..x).each { |i| yield i } 
    end

    def my_times 
        (0...self).each { |i| yield } 
    end
end 
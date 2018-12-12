#Print 1-255
range = 1..255
# puts range.to_a

#Print odds between 1-255
# for i in range
#     puts i if i.odd?
# end

#Print Sum
sum = 0
# for i in range
#     puts i
#     puts sum = i+sum
# end

#Iterating through an array
x = [1,3,-5,7,9,-13]
#puts x
#or
# for i in 0...x.length
#     puts x[i]
# end

#Find Max
# puts x.max
# y = [-3,-5,-7]
# puts y.max

#Get Average
# for i in 0...x.length
#     sum += x[i]
# end
# puts sum/x.length

#Array with Odd Numbers
# arr = range.to_a.reject!{|i| i.even?}
# puts arr

#Greater Than Y
y = 7
# puts x.reject{|i| i<=y}.count

#Square the values
#puts x.collect {|i| i * i}

#Eliminate Negative Numbers
#puts x.collect {|i| i=0 unless i > 0; i}

# Max, min, and average
arrX = [1,5,10,7,-2]
# for i in 0...arrX.length
#     sum += arrX[i]
# end
# ave = sum/arrX.length
# puts [[:max, arrX.max], [:min,arrX.min], [:average, ave]].to_h

#Shifting the Values in the Array
# arrX.slice!(0)
# arrX.push(0)
# puts arrX

#Number to String
puts x.collect {|i| i="Dojo" unless i > 0; i}
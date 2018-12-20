# for n in 1..255
#     puts n
# end

# (1..255).to_a.each do |num|
#     puts num if num % 2 == 1
# end

# sum = 0
# for n in 1..255
#     sum += n
#     puts "New number: #{n} Sum: #{sum}"
# end

# [1,3,5,7,9,13].each do |elem|
#     puts elem
# end

#puts [-3,-5,-7].max

# arr = [2,10,3]
# puts arr.inject { |sum, elem| sum + elem }/ arr.size.to_f

# arr_odd = []
# for n in (1..255).step(2)
#     arr_odd.push(n)
# end
# puts arr_odd

# tot = 0
# [1,3,5,7].each do |num|
#     tot += 1 if num > 3
# end
# puts tot

# arr2 = [1,5,10,-3]
# for i in (0...arr2.length)
#     arr2[i] = arr2[i]*arr2[i]
# end
# print arr2

# arr3 = [1,5,10,-2]
# for i in (0...arr3.length)
#     arr3[i] = 0 if arr3[i] < 0
# end
# puts arr3

# arr4 = [1,5,10,-2]
# puts arr4.min
# puts arr4.max
# puts arr4.inject { |sum, elem| sum + elem }/arr4.length.to_f

# arr5 = [1,5,10,7,-2]
# for i in (0...arr5.length-1)
#     arr5[i] = arr5[i+1]
# end
# arr5[arr5.length-1] = 0
# puts arr5

# arr6 = [-1,-3,2]
# for i in (0...arr6.length)
#     arr6[i] = 'Dojo' if arr6[i] < 0
# end
# puts arr6.to_s

x = (1..20)

puts "Class Name : #{x.class}"
puts "It does include 15!" if x.include?15
puts "Last object is " + x.last.to_s
puts "Maximum number is " + x.max.to_s
puts "Minimum number is " + x.min.to_s


#Output :
# Class Name :Range
# It does include 15!
# Last object is 20
# Maximum number is 20
# Mininum number is 1
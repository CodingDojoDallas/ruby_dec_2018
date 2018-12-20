# Print 1-255
(1..255).each{|number| puts number, " - "}

# Print odd numbers between 1-255
puts (2...255).find_all{ |i| i.odd? }

# Print Sum
x=0
0.upto(255){ |i|  x += i; puts "New Number: #{i}" + " Sum: #{x}"}

# Iterating through an array
x = [1,3,5,7,9,13]
for i in 0...x.length
  puts x[i]
end
x.each{ |i| puts i}

# Find max
x = [3,0,1,5,13]
y = [-1,-12, -5, -2]
puts x.max
puts y.max

# Get Average
avg = 0
for i in 0...x.length
  avg += x[i]
end
puts avg / x.length

# Array with Odd Numbers
arr = (1..255).find_all{ |i| i.odd? }
puts arr

# Greater than Y
array = [1,3,5,7]
y = 3
puts array.find_all{ |i| i > y}

# Square the Values
arr = [1,5,10,-2]
puts arr.collect{ |i| i * i }

# Eliminate Negative Numbers
arr = [1,5,10,-2]
puts arr.collect{ |i| i=0 unless i>0; i}

# Min, Max, Average
x=[1,5,10,-2]
def mma arr
  ans = Array(3)
  avg = 0
  ans[0] = arr.max
  ans[1] = arr.min
  arr.each{ |i| avg +=i }
  ans[2] = avg/arr.length
  puts [[:max, ans[0]], [:min, ans[1]], [:avg, ans[2]]].to_h
end
mma x

# Shifting the Values in the Array
x = [1,5,10,-2]
x.shift
x.push(0)
puts x

# Number to String
x = [-1,-3,2]
puts x.collect{ |i| i="Dojo" unless i>0; i}

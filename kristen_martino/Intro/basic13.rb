puts "----------------\n#1. Print 1-255"

def print_range(x, y)
  p (x..y).to_a
end

print_range(1, 255)

puts "----------------\n#2. Print odd 1-255"

def print_odd(x, y)
  p (x..y).select { |elem| elem.odd? }
end

print_odd(1, 255)

puts "----------------\n#3. Print sum 0-255"

def print_sum(x, y)
  sum = 0
  x.upto(y).each { |i| print "New number: #{i}, ", "Sum: #{sum += i}\n" }
end

print_sum(0, 255)

puts "----------------\n#4. Iterate through array"

def iterate(r)
  r.each { |val| print val, " " }
end

iterate [1, 3, 5, 7, 9, 13]

puts "\n----------------\n#5. Find max"

def print_max(r)
  p r.max
end

print_max([1, 3, 5, 7, 9, 13])

puts "----------------\n#6. Get average"

x = [1, 3, 5, 7, 9, 13]

def average(r)
  r.sum(0.0) / r.length
end

p average(x)

puts "----------------\n#7. Array with odd numbers"

def arr_odd_255
  y = print_odd(1, 255)
end

arr_odd_255

puts "----------------\n#8. Greater than y"

def greater_than_y(arr, y)
  p arr.select { |elem| elem > y }.length
end

greater_than_y(x, 3)

puts "----------------\n#9. Square the values"
p x.collect { |i| i * i }

puts "----------------\n#10. Replace negative numbers with 0"

arr = [1, 5, 10, -2]
(0...arr.length).each { |i| arr[i] = 0 if arr[i] < 0 }
p arr

puts "----------------\n#11. Max, min, and average"
p z = {:max => arr.max, :min => arr.min, :avg => average(arr)}

puts "----------------\n#12. Shift values in array"

def shift(r)
  (0...r.length).each { |i| r[i] = r[i + 1] }
  r[-1] = 0
  p r
end

shift(x)


puts "----------------\n#13. Number to string"

def num_to_str(r)
  (0...r.length).each { |i| r[i] = "Dojo" if r[i] < 0 }
  p r
end

num_to_str([-100, 0, 100, -5])
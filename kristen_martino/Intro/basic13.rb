puts "----------------\n#1. Print 1-255"

def print_range x, y
	p (x..y).to_a
end

print_range(1, 255)

puts "----------------\n#2. Print odd 1-255"

def print_odd x, y
	p (x..y).select {|elem| elem.odd?}
end

print_odd(1, 255)

puts "----------------\n#3. Print sum 0-255"

def print_sum x, y
	sum = 0
	x.upto(y).each {|i| print "New number: #{i}, ", "Sum: #{sum += i}\n"}
end

print_sum(0, 255)

puts "----------------\n#4. Iterate through array"

def iterate r
	r.each {|val| print val, " "}
end

iterate [1, 3, 5, 7, 9, 13]

puts "\n----------------\n#5. Find max"

def print_max r
	p r.max
end

print_max([1, 3, 5, 7, 9, 13])

puts "----------------\n#6. Get average"

x = [1, 3, 5, 7, 9, 13]

def average r
	r.sum(0.0) / r.length
end

p average(x)

puts "----------------\n#7. Array with odd numbers"
p y = (1..255).select {|elem| elem.odd?}

puts "----------------\n#8. Greater than y"
y = 3
puts x.select {|elem| elem > y}.length

puts "----------------\n#9. Square the values"
p x.collect {|i| i * i}

puts "----------------\n#10. Replace negative numbers with 0"
arr = [1, 5, 10, -2]

# arr.each {|val| p ((val > 0) ? val : 0)}
# arr.
p arr.reject {|val| val < 0}

puts "----------------\n#11. Max, min, and average"
p z = {:max => arr.max, :min => arr.min, :avg => 0}

puts "----------------\n#12. Shift values in array"

puts "----------------\n#13. Number to string"
def num_to_str x

end


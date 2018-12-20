X = (4..100)

puts "Class Name: #{X.class}"
puts "It does include 49 " if X.include? 49
puts "The last number in this range is " + X.last.to_s
puts "The maximum  number in this range is " + X.max.to_s
puts "The minimum number in this range is " + X.min.to_s

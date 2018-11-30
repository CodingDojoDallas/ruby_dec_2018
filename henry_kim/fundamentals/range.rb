a = (1..10)

puts "Class Name: #{a.class}"

puts "It does not include 7.4" if a.include? 7.4

puts "The last number of this range is " + a.last.to_s
puts "The maximum number of this range is " + a.max.to_s
puts "The minimum number of this range is " + a.min.to_s

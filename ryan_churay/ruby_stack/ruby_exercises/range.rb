x = (1..9)
puts "Class Name: #{x.class}"

puts "it does include 3" if x.include? 3

puts x.last

puts x.max
puts "The minimum number is " + x.min.to_s


BEGIN { puts '***********************'}

END { puts '***********************'}

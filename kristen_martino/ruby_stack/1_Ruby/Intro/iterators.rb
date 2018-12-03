x = ["ant", "bear", "cat"]

puts x.any? {|word| word.length >= 3}

x.each {|word| print word, "--"}
puts "\n------------------------------"
puts (1..4).collect {|i| i * i}.to_s
puts (1..4).collect {"cat"}.to_s
# .detect/.find return the first for which block is not false
puts (1..100).detect {|i| i % 5 == 0 and i % 7 == 0}
puts (1..1000).find {|i| i % 5 == 0 and i % 7 == 0}
# .find_all or .select return an array with all elements for which block is not false
puts (1..100).find_all {|i| i % 5 == 0 and i % 7 == 0}.to_s
puts (1..1000).select {|i| i % 5 == 0 and i % 7 == 0}.to_s
# .reject (opposite of find_all)
puts (1..10).reject {|i| i % 3 == 0}.to_s
# .upto(limit) iterates block up to the int number
5.upto(10) {|i| print i, " "}
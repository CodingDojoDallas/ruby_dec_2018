a = [1,5,3,9,0]
b = ["Chris", "Ryan", "Henry", "Andrew", "Ian"]
# at
puts a.at(-2) # => 9
# fetch
b.fetch(7) { |i| puts "#{i} is out of bounds"}
# delete
a.delete(9)
puts a
# reverse
puts b.reverse
# length
puts "The length of b is #{b.length}"
# sort
puts b.sort
# slice
puts b.slice!(2)
puts b
# shuffle
puts a.shuffle
# join
puts b.join(", ")
# insert
puts a.insert 2, 222
# values_at
puts "#{b.values_at(0,1).join(" and ")} are rock climbers."
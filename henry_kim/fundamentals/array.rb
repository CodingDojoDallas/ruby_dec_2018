a = ["Sheep", "Dog", "Cat", "Cow", "Chicken"]
b = [2,3,4,5,6,7,8,9]
c = ["Cow", 8]

# puts a[4]
# x= (a+b)-c
# puts x.to_s

# print a+b

# puts b.class
# puts b.shuffle.join("why")

# a.delete("Chicken")
# puts a

# puts "Length of a is #{a.length}"
#
# b.insert(-2,-5,2)
# puts b
#
# puts a.sort.to_s
#
# puts a.reverse.to_s
#
# puts b.shuffle.to_s

# puts a.slice(2,3).to_s
# puts a.slice(1).to_s
# puts a.slice(-3).to_s

puts a.values_at(3,4).join(' and ').to_s

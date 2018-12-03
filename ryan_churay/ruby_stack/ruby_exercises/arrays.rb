a = ["Matz", "Guido", "Dojo", 'Choi', 'John']
b = [5,6,7,8,9,1,10,3]
puts a[4]

puts a.at(0)
puts a.fetch(3)

a.delete('Guido')
puts a

puts b.reverse

puts b.length

puts a.sort

puts b.sort

puts a.slice!(0)
puts "the new a is #{a}"

puts b.shuffle

puts b.join
puts a.join('-')

puts a.insert(0, "Ryan")

c = %w{ryan chris daniel}
puts c
puts c.values_at(2,1).join(' inbetween ')


BEGIN { puts '***********************'}

END { puts '***********************'}

a = ['Ledbetter', 'King', 'Fenton', 'Degen', 'Chandler', 'Smith', 'Maute']
b = [1,3,5,7,8,10,12,21,31,47,50]
c = ['Degen',12]

puts a[0]
puts a[1]

x = (a+b)-c
puts x.to_s

puts b.class
puts a.shuffle.join('-')

a.delete('Smith')
puts a

puts "Length of a is #{a.length}"

puts a.fetch(1)

a.reverse!
puts "A reversed is " + a.to_s

puts a[0].length

b.sort!
puts b

puts "hello"
puts "coding"

puts "hello"
puts "Ryan"

x = puts "hello world"
# puts x
first_name = "Ryan"
last_name = "Churay"
puts "My first name is #{first_name} and my last name is #{last_name}"
puts "My first name is %s and my last name is %s" %[first_name, last_name]

z = 50
puts "There are %d apples" %[z]

x = "Coding Dojo "
puts "this word has the word 'Dojo'" if x.include? " Dojo "

x = "john, charles, matt, joe"
puts x.split(", ")
y = ""
puts "Y is empty" if y.empty?

x=5
if x>2
  puts "x is greater than 2"
elsif x<2 and x>0
  puts "x is 1"
else
  puts "i can't guess the number"
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

age = 21
unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false

i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

for i in 0..5
  next if i == 2
  puts "Value of local variable is #{i}"
end

def say_hello name1, name2
  puts "hello, #{name1} and #{name2}"
end
say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"


# just exercise
=begin
  long commented
  longer comment
  even more
=end

# ITERATORS
.any? { |obj| block } => true or false
  e.g. ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true
.each => calls block once for each element in ruby self, passing that element as a block parameter.
  e.g. ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--
.collect { |obj| block } => returns a new array with the results of running block once for every element in enum
  e.g. (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
  e.g. (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]
.detect/.find => returns the first for which block is not false.
  e.g. (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
  e.g. (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35
.find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
  e.g. (1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
.reject { |obj| block } => opposite of find_all
  e.g. (1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]
.upto(limit) => iterates block up to the int number
  e.g. 5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10



BEGIN { puts '***********************'}

END { puts '***********************'}

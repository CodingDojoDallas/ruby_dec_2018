arr = %w(I code therefore I am)
(0...arr.count).each {|i|
  puts arr[i]
}

3.times { puts "WOW" }


puts 24.class    # => Fixnum
puts true.class  # => TrueClass
puts nil.class   # => NilClass

puts "string".reverse # => "gnirts"
puts 23.odd?          # => true
puts "abc".upcase     # => "ABC"

puts 24 + 8    # => 32

puts 24.send(:+, 8)  # => 32
puts 24.+ (8)        # => 32
puts 24 + 8          # => 32

"I am a string"
'I am also a string'

"I am an instance of".class

String.new("I am an instance of the String class")

"24 plus 8 is #{24 + 8}"         # => "24 plus 8 is 32"
'24 plus 8 is #{24 + 8}'         # => "24 plus 8 is #{24 + 8}"
"24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"

# "24 plus 8 is " + (24 + 8) # => TypeError: no implicit conversion of Fixnum into String

name = "KRISTEN"
name.downcase

"".empty?      # => true
"hello".empty? # => false

"hello".length # => 5

"hello".split                 # => ["hello"]
"hello".split("")             # => ["h", "e", "l", "l", "o"]
"oscar@gmail.com".split("@")  # => ["oscar", "gmail.com"]

str = "bar"
str[0] = "c"
puts str # => "car"

word = "hello"
word.capitalize # => "Hello"
puts word # => "hello"
word.capitalize! # => "Hello"
puts word # => "Hello"


age = 22
if age >= 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
  puts "Welcome to the party"
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end

puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false

i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i +=1
end

i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

for i in 0..5
  puts "Value of local variable is #{i}"
end

for i in 0..5
  puts "Value of local variable is #{i}"
  break if i == 2
end

for i in 0..5
  next if i == 2
  puts "Value of local variable is #{i}"
end


def hello_world
  puts "hello world"
end
hello_world

def say_hello(name1, name2)
  puts "hello, #{name1} and #{name2}"
end
say_hello("oscar", "eduardo") # => "hello, oscar and eduardo"

def say_hello2(name1="oscar", name2="shane")
  puts "hello, #{name1} and #{name2}"
end
say_hello2 "oscar"    # => "hello, oscar and shane"

def say_hello3(name1="oscar", name2="shane")
  "hello, #{name1} and #{name2}"
end
puts say_hello3 "oscar", "eduardo"   # => "hello, oscar and eduardo"

def say_hello4(name1, name2)
  if name1.empty? or name2.empty?
    return "Who are you?!"
  end
  # Doesn't reach the last line because we used return
  "hello, #{name1} and #{name2}"
end
puts say_hello4 "", ""


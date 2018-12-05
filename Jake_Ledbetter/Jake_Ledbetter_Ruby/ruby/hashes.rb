X = {'first_name' => "Jake",  'last_name' => "Ledbetter", 'height' => "six and a half feet tall"}
puts "My last name is Ledbetter!" if X['last_name'].eql? "Ledbetter"

Y = {:first_name => "Jake", :last_name => "Ledbetter"}
puts "Y is ", Y
puts Y[:first_name], Y[:last_name]

puts "Deleting :first_name"
Y.delete(:first_name

if Y.has_value?("Ledbetter")
  puts "Y has value called Ledbetter"
end
if Y.has_key?("last_name")
  puts "Y has key last_name"
end
if Y.empty?
  puts "Thats weird"
else
  puts "Y is not empty"
end

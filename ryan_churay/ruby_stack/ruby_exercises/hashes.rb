our_hash = {:first_name => "Coding", :last_name => "Dojo"}
# our_hash = {first_name: "Coding", last_name: "Dojo"}
#
# def new_user user = {first_name: "first", last_name: "last"}
#   puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
# end
our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user # => "Welcome to our site, first last!"
# new_user our_user # => "Welcome to our site, Oscar Vasquez!"


our_hash.delete(:first_name)
puts our_hash
if our_hash.empty?
  puts "the has is empty"
else
  puts "the hash has at least one value"
end

if our_user.has_key?(:last_name)
  puts our_user[:last_name]
end

puts our_hash[:last_name] if our_hash.has_value?("Dojo")

our_hash = {first_name: "Chris", middle_name: "Charles", last_name: "Truax"}
p our_hash.delete(:middle_name)

p our_hash.empty?

p our_hash.has_key?(:first_name)

p our_hash.has_value?("Truax")

def new_user greeting="Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"      
end


new_user "Hello", our_hash # => Hello, Oscar Vazquez



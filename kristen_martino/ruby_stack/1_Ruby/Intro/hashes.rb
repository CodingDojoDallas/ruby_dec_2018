def new_user greeting = "Welcome", first_name: "first", last_name: "last"
	puts "#{greeting}, #{first_name} #{last_name}"
end

p our_user = {first_name: 'Kristen', middle_name: 'Elisabeth', last_name: "Martino"}

p our_user.has_key?(:middle_name)
p our_user.has_value?('Martino')
p our_user.empty?
p our_user.delete(:middle_name)
new_user "Good morning", our_user
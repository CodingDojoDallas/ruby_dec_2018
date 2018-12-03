pizza = {:topping => "pepperoni", :crust => "thin", :sauce => "marinara"}

puts "pizza is", pizza    
pizza.delete(:crust)
puts "pizza is now", pizza
puts pizza.empty?
puts pizza.has_key?(:sauce)
puts pizza.has_value?("pepperoni")

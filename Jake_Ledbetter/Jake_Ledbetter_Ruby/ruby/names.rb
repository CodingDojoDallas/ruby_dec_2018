a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]

def theNames names2
  puts "You have " + names2.length.to_s + " names in the 'names' array"
  for i in names2
    puts "The name is " + i[:first_name] + " " + i[:last_name]
  end
end

theNames(names)

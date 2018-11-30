# 1:
def sum_and_select array
  puts array.reduce(:+)
  array.find_all {|i| i > 10}
end
sum_and_select [1,4,6,12,20,3]
# 2:
def shuffle_and_show array
  puts array.shuffle
  return array.find_all {|i| i.length > 5}
end
shuffle_and_show ["John","KB","Oliver","Cory","Matthew","Christopher"]
# 3:
alphabet = ('a'..'z').to_a.shuffle
puts alphabet.last
puts alphabet.first
if alphabet.first =~ /[aeiou]/
  puts "First letter is a vowel!"
end
# 4:
random_array = []
for i in 0...10
  random_array.push(55+rand(45))
end
puts random_array
# 5:
random_array = []
for i in 0...10
  random_array.push(55+rand(45))
end
random_array.sort!
puts random_array
puts random_array.first
puts random_array.last
# 6:
rand_string = ""
for i in 0...5
  rand_string << ((65+rand(26)).chr)
end
puts rand_string
# 7:
random_array = []
  for i in 0...10
    rand_string = ""
    for i in 0...5
      rand_string << ((65+rand(26)).chr)
    end
  random_array.push(rand_string)
end
puts random_array

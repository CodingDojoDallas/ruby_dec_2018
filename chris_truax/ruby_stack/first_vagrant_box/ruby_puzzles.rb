#1
# arr = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# arr.each {|i| sum += i}
# puts sum
# puts arr.find_all {|i| i > 10}

#2
# names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts names.shuffle
# p names.find_all {|i| i.length > 5}

#3
# alpha = ("a".."z").to_a
# puts alpha.shuffle.last
# puts first = alpha.shuffle.first 
# puts "The first letter is a vowel!" if first.start_with?("a","e","i","o","u")

#4
# prng = Random.new
# a = Array.new(10) {prng.rand(55..100)}
# p a
# #5
# p a.sort!
# puts a.min, a.max

#6
def rand_string
    string = ""
    arr = Array.new(5) {(65+rand(26)).chr}
    arr.each {|x| string.concat(x)}
    string
end
# puts rand_string

#7
p arrString = Array.new(10) {rand_string}
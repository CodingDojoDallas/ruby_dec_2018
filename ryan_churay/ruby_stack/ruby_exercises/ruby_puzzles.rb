arr = [3,5,1,2,7,9,8,13,25,32]
def sum_reject arr
  puts arr.reduce(:+)
  arr.find_all{ |i| i > 10}
end
puts sum_reject arr


arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def shuffle_return arr
  puts arr.shuffle
  arr.find_all { |i| i.length>5}
end
puts shuffle_return arr


def alph
  alphabet = ('a'..'z').to_a.shuffle
  puts alphabet[alphabet.length-1]
  if alphabet[0]== "a" || alphabet[0]== "e" || alphabet[0]== "i" || alphabet[0]== "o" || alphabet[0]== "u"
    puts "the first letter is a vowel"
  else
    puts alphabet[0]
  end
end
alph

random = Array.new(10)
puts random = random.collect{ |i| i = rand(55..100)}
puts random.sort
puts random.min
puts random.max

word = Array.new(5)
puts word = word.collect{ |i| i = (65+rand(26)).chr}
puts word.join

def ran_words
  words = Array.new(10)
  for i in 0...10
    word = Array.new(5)
    puts word = word.collect{ |i| i = (65+rand(26)).chr}
    words.push(word.join)
  end
  puts words
end
ran_words

##1.
array = [3,5,1,2,7,9,8,13,25,32]
sum = 0
def one
  array = [3,5,1,2,7,9,8,13,25,32]
  sum = 0
  for i in 0..array.length-1
    sum += array[i]
  end
  puts "sum = " + sum.to_s
  return array.find_all{ |i| i > 10}
end
puts one

array2 = ['John','KB','Oliver','Cory','Matthew','Christopher']
def two
  array2 = ['John','KB','Oliver','Cory','Matthew','Christopher']
  puts array2.shuffle
  array3 = []
  for i in 0..array2.length-1
    if array2[i].length > 5
      array3.push(array2[i])
    end
  end
  return array3
end
puts two

def three
  alphabet = []
  for i in ('a'..'z').to_a
    alphabet.push(i)
  end
  alphabet.shuffle!
  puts alphabet[0]
  if alphabet[0] == 'a' || alphabet[0] == 'e' || alphabet[0] == 'i' || alphabet == 'o' || alphabet == 'u' || alphabet =='y'
    puts 'the first character is a vowel'
  end
  puts alphabet[25]
end
three

def four
  array5 = []
  for i in 0..10
    array5.push(rand(55..100))
  end
  return array5
end
puts four

def five
  array6 = []
  for i in 0..10
    array6.push(rand(55..100))
  end
  array6.sort!
  puts array6
  puts "Min Value: " + array6[0].to_s
  puts "Max Value: " + array6[10].to_s
end
five

def six
  string = (65+rand(26)).chr
  for i in 0..4
    string += (65+rand(26)).chr
  end
return string
end
puts six
puts
def seven
  array7 = []
  string = ""
  for i in 1..10
    for x in 0..5
      string += (65+rand(26)).chr
    end
    array7.push(string)
    string = ""
  end
  return array7
end

puts seven

#Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. 
#Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass 
#the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

x = [3,5,1,2,7,9,8,13,25,32]
length = x.length
sum = 0
x.each do |i| 
    sum = sum + i 
end 
puts sum 
puts x.reject {|i| i <10}


#Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and 
#print the name of each person. Have the program also return an array with names that are longer than 5 
#characters.

x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

x.shuffle!
puts x
puts x.find_all{|word| word.length > 5}

#Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the
#array and display the last letter of the array. Have it also display the first letter of the array. If the 
#first letter in the array is a vowel, have it display a message.

x = ("a".."z").to_a

x.shuffle!
puts x[-1]
puts x[0]
puts "This is a vowel" if x[0] =~ /[aeiou]/


#Generate an array with 10 random numbers between 55-100.

x = [rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100)]

puts x

#Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in
#the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as 
#the maximum value

x = [rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100),rand(55..100)]

x.sort!
puts x
puts "Min:#{x.first} Max:#{x.last}"


#Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

x = (1..5).map {(65+rand(26)).chr}
puts x


#Generate an array with 10 random strings that are each 5 characters long

x = Array.new(10, (1..5).map {(65+rand(26)).chr})
puts x



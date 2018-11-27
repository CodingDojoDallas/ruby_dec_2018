# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32.
#  Print the sum of all numbers in the array.
#  Also have the function return an array that only include numbers that are greater than 10
# (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# array = [3,5,1,2,7,9,8,13,25,32]
# def puzzle_one array
#   puts array.reduce(:+)
#   print array.reject {|x| x < 10}
# end
#
# puzzle_one array

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
#
# def puzzle_two array
#   print array.shuffle
#   puts array.find_all {|i| i.length > 5}.to_s
# end
#
# puzzle_two names


# Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
# Shuffle the array and display the last letter of the array.
# Have it also display the first letter of the array.
# If the first letter in the array is a vowel, have it display a message.

# alpha = ('a'..'z').to_a
#
# def puzzle_three array
#   array.shuffle!
#   puts array.first
#   puts array.last
#   puts "this is a vowel!" if array[0] == 'a' or array[0] =='e' or array[0] =='i' or array[0] =='o' or array[0] =='u'
# end
#
# puzzle_three alpha

# Generate an array with 10 random numbers between 55-100.

# def puzzle_four
#   print Array.new(10) { rand(55..100) }
# end
#
# puzzle_four

# Generate an array with 10 random numbers between 55-100 and have it be sorted
# (showing the smallest number in the beginning).
# Display all the numbers in the array.
# Next, display the minimum value in the array as well as the maximum value

# def puzzle_five
#    newArr = Array.new(10) { rand(55..100) }
#   print newArr.sort
#   puts "The minimun value is #{newArr.min} and the maximum value is #{newArr.max}."
# end
#
# puzzle_five

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)

# def puzzle_six
#   puts (0..5).map { (65 + rand(26)).chr }.join
# end
#
# puzzle_six

# Generate an array with 10 random strings that are each 5 characters long

# def puzzle_seven
#   i = 0
#   while i < 11
#     puts  (0..5).map { (65 + rand(26)).chr }.join
#     i= i+1
#   end
# end
#
# puzzle_seven

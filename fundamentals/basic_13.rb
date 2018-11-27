# Print 1-255
# Write a program that would print all the numbers from 1 to 255.
# puts (1..255).to_a


# Print odd numbers between 1-255
# Write a program that would print all the odd numbers from 1 to 255.

# puts (1..255).select{ |num| num.odd? }

# Print Sum
# Write a program that would print the numbers from 0 to 255 but this time,
# it would also print the sum of the numbers that have been printed so far.
# For example, your output should be something like this:
# New number: 0 Sum: 0
# New number: 1 Sum: 1
# New number: 2 Sum: 3
# New number: 3 Sum: 6
# ...
# New number: 255 Sum: __
# Do NOT use an array to do this exercise.
#
# sum = 0
# (1..255).each do |n|
#   sum+=n
#   puts "New number: #{n} Sum: #{sum}"
# end



# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.
# Being able to loop through each member of the array is extremely important.

# x = [1,3,5,7,9,13]
# x.each { |i| puts i}

# Find Max
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array.
# Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.


# def find_max array
#   puts array.max()
# end
#
# find_max [1,3,-5]


# Get Average
# Write a program that takes an array, and prints the AVERAGE of the values in the array.
# For example for an array [2, 10, 3], your program should print an average of 5.
# Again, make sure you come up with a simple base case and write instructions to solve that base case first,
# then test your instructions for other complicated cases.
# You can use a length function with this assignment.

# def average array
#   puts array.inject {|sum, n| sum+n}.to_f / array.length
# end
#
# average [1,2,3,4,6]

# Array with Odd Numbers
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255.
# When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

# print (1..255).select{ |num| num.odd? }.to_a

# Greater Than Y
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y.
# For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2
# (since there are two values in the array that are greater than 3).

# def greater_than_y array, y
#   puts array.count {|x| x > y}
# end
#
# greater_than_y [1,3,5,7], 3

# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.
# When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].

# def square array
#   print array.each_with_object([]) { |x, array| array << x ** 2  }
# end
#
# square [1, 5, 10, -2]

# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.
# When the program is done, x should have no negative values, say [1, 5, 10, 0].

# def negative_numbers array
#   print array.each_index {|i| array[i] = 0 if array[i] < 0}
# end
#
# negative_numbers [1, 5, 10, -2

# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array,
# the minimum value in the array, and the average of the values in the array.

# def max_min_avg array
#   sum = array.inject {|sum, n| sum+n}.to_f / array.length
#   puts "The max  is #{array.max}, min is #{array.min}, and average is #{sum}"
# end
# max_min_avg [1, 5, 10, -2]

# Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.
# For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].


# def shift_array array
#   array.shift
#   array.insert(array.length,0)
#   print array
# end
#
# shift_array [1, 5, 10, 7, -2]

# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.
# For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2]

def number_string array
  print array.each_index {|i| array[i] = "Dojo" if array[i] < 0}
end

number_string [-1, -3,2]

#Print 1-255
#Write a program that would print all the numbers from 1 to 255.

1.upto(255) {|i| print i, " "}

#Print odd numbers between 1-255
#Write a program that would print all the odd numbers from 1 to 255.

(1..255).find_all{|i| i % 2 != 0}

#Print Sum
#Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:

sum = 0
(0..255).each do |i|
    sum = sum + i
    puts "Sum= #{sum} Number=#{i}"
end

# Iterating through an array
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and 
# print each value on the screen. Being able to loop through each member of the array is extremely important.

x = [1,3,5,7,9,13]
x.each{ |i| puts i}

#Find Max
#Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your 
#program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix 
#of positive numbers, negative numbers and zero.

x = [-3, -5, -7]
x.max.to_s

#Get Average
#Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an 
#array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base
#case and write instructions to solve that base case first, then test your instructions for other complicated
#cases. You can use a length function with this assignment.

x = [2, 10, 3]
length = x.length
sum = 0
x.each do |i|
    sum = sum + i
end
avg = sum/length
puts avg

#Array with Odd Numbers
#Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program
#is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

y = (1..255).to_a
y.select! {|i| i.odd?}
puts y

#Greater Than Y
#Write a program that takes an array and returns the number of values in that array whose value is greater than
#a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 
#(since there are two values in the array that are greater than 3).

x = [1,3,5,7]
y = 3
num = 0
x.each {|i| num = num + 1 if i > y}

#Square the values
#Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in
#the array by itself. When the program is done, the array x should have values that have been squared, say
#[1, 25, 100, 4].

x = [1,5,10,-2]
x.each. {|i| puts i * i}.

#Eliminate Negative Numbers
#Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of
#0. When the program is done, x should have no negative values, say [1, 5, 10, 0].


x = [1, 5, 10, -2]
puts x.each_index {|i| x[i] = 0 if x[i] < 0}

#Max, Min, and Average
#Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the 
#array, the minimum value in the array, and the average of the values in the array.

x = [1,5,10,-2]

def function(arr)
    sum = 0
    avg = 0
    max = arr[0]
    min = arr[0]
    arr.each do |i|
        if i < min
            min = i
            sum += i
        elsif i > max
            max = i
            sum += i
        else 
            sum += i
        end
    end
    avg = sum / arr.length
    puts min
    puts max
    puts avg
end
function ([1,5,10,-2])

#Shifting the Values in the Array
#Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For
#example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

x = [1,5,10,7,-2]

def guess_number (guess)
    number = 25
    # your code here
    if guess == 25
        return "You got it right!"
    elsif guess > 25
        return "Your guess was too high!"
    elsif guess < 25 
        return "Your guess was too low!"
    end

    "Correct number is #{guess}"
end 
puts guess_number 25

#BETTER WAY TO DO THIS

# def guess_number guess
#     number = 25
#     puts "You got it" if guess == number
#     puts "Guess was too high!" if guess > number
#     puts "Guess was too low!" if guess < number


# end

# guess_number 20
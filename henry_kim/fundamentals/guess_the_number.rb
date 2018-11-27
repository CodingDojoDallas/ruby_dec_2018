def guess_number guess
    number = 25
    # your code here
      puts "Guess was too low!" if guess < number
      puts "Guess was too high!" if guess > number
      puts "You got it" if guess == number
end

guess_number 25

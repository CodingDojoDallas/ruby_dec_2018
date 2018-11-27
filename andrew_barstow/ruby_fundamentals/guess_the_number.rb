def guess_number guess
    number = 25
    puts "You got it!" if guess.to_i === number;
    puts "Guess was too high!" if guess.to_i > number;
    puts "Guess was too low!" if guess.to_i < number
end

guess_number 26
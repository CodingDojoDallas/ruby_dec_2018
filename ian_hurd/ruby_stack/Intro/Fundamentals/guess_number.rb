def guess_number guess
  number = 25
  if guess > number
    return "Guess was too high"
  elsif guess < number
    return "Guess was to low"
  else
    return "You guessed the number!"
  end
end
puts "Why"
puts guess_number 13

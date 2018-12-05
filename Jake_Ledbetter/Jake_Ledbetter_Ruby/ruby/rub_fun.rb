def guess guestGuess
  if guestGuess == 5
    puts "You guessed right"
  elsif guestGuess > 5
    puts "You guessed to high"
  elsif guestGuess < 5
    puts "You guessed to low"
  end
end

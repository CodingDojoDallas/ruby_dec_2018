def guess_number guess
  number = 25
  if guess == number
    puts "You got it!"
  elsif guess > number
    puts "#{guess} is too high"
  else guess < number
    puts "#{guess} is too low"
  end
end

guess_number 2

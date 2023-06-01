target_number = rand(1..100)
guess = nil
guess_count = 0

puts "Welcome to the Number Guessing Game!"
puts "I have chosen a number between 1 and 100. Can you guess it?"

while guess != target_number
  print "Enter your guess: "
  guess = gets.chomp.to_i
  guess_count += 1

  if guess < target_number
    puts "Too low! Try again."
  elsif guess > target_number
    puts "Too high! Try again."
  end
end

puts "Congratulations! You guessed the number #{target_number} correctly in #{guess_count} attempts."

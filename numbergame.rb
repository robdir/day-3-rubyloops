def print_divider
  puts "**" * 40
  puts "\n"
end

def guesses_rem
  puts "You have #{} remaining"
end

puts "\n \n"

print_divider

#Variable to be used - random number.

random_number = 1 + rand(100)

#Variable for user guesses

guess = 0

#Variable for no. of turns

count = 0

puts "Welcome to this number guessing game, please enter a number to begin!"
guess = gets.chomp.to_i

while count < 10
  puts "Wrong answer, guess again!"
  count += 1
  if count > 10
    puts "You're out of guesses, Game Over!!"
  end
end

if guess == random_number
    puts "Congratulations, you win!"
    break
else
    puts guess > secret_num ? 'Lower' : 'Higher'
end

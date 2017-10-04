def print_divider
  puts "**" * 40
  puts "\n"
end

puts "\n \n"

print_divider

#Variable to be used - random number.

random_number = 1 + rand(100)

#Variable for user number

guess = 0

#Variable for no. of turns

count = 0

countdown = 10

puts "Welcome to this number guessing game, would you like to play? Y/N"
usr_ansr = gets.chomp.upcase
if usr_ansr == "Y"
  puts "\nLet's get started!"
  puts "\n"
  print_divider
else
  puts "Too bad, see you round!"
  abort
end

#The main section of the 'game' has to be some form of loop -
#The program has to check each guess the user makes, evaluate whether it's higher or
#lower, and check the users 'health' i.e. count

while count < 10
  puts "What's the secret number?"
  guess = gets
  guess = guess.to_i
  if guess == random_number
      puts "Congratulations, you win!"
      break
  else
      puts guess > random_number ? "Nope! Try lower\n" : "Nope! Try higher\n"
      count += 1
      countdown -= 1
  end
  if count < 10
    puts "You have #{countdown} attempts remaining, choose wisely..."
  end
end

puts "Thanks for playing!"

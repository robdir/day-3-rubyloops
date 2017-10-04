def print_divider
  puts "**" * 40
  puts "\n"
end

puts "\n \n"

print_divider

puts "Welcome to this number guessing game, please enter a number to begin!"
user_number = gets.chomp.to_i

random_number = rand(100)
user_life = 100

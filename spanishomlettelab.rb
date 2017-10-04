#Adds a divider when called.
def print_divider
  puts "*" * 40
  puts "\n"
end

#Prints progress bar when called.

def print_progress_bar
  3.times { sleep 0.5; print "."}
  puts "\n"
end

NUM_POTATOES = 5
NUM_EGGS = 6

#Array of hashes for the ingredients

ingredients = [
  { name: 'potatoes', quantity: NUM_POTATOES },
  { name: 'eggs', quantity: NUM_EGGS },
  { name: 'onion', quantity: 1 },
  { name: 'oil' , quantity: 'some' },
  { name: 'salt', quantity: 'some'},
]

#Printing receipe by calling .each on the array of hashes.

puts "*   Let's cook a Spanish Omelette!    *"
print_divider

puts "You will need the following: "

ingredients.each do |ingredient|
  puts "* #{ingredient[:quantity]} #{ingredient[:name]}"
end

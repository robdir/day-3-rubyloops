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

loop do
  puts "\n"
  print_divider

  puts "Got all the ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == 'N'
    puts "Better go shopping"
    print_progress_bar
  elsif answer == 'Y'
    puts "Let's start cooking!"
    break
  else
    puts "That's not a valid input, please try again."
end
end

#An array of hashes which outlines the steps needed.

steps = [
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
]

print_divider
puts "See below for recipe overview:"

#IMPORTANT STEP - SEE BELOW FOR HOW TO PROPERLY ITERATE THROUGH THE ABOVE
#INDEX GRABS THE NO. WHICH RUBY ASSIGNS TO THE ARRAY, |STEP| IS USED TO ACCESS THE HASHES

steps.each_with_index do |step, index|
  puts (index).to_s + ") " + step[:description]
end

#Adding methods to be indicate progress to the user.


def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def scrape_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Scraping potato #{counter}"
    print_progress_bar
  end
end

def cut_potatoes
  counter = 0
  while counter < NUM_POTATOES
    counter += 1
    print "Cutting potato #{counter} into thick slices"
    print_progress_bar
  end
end

def add_potatoes_to_pan
  for counter in 1..NUM_POTATOES
    print "Adding potato #{counter} to the pan."
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end


def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp

  answer.upcase == 'Y'
end

steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "Okay, I will give you some extra time."
    print_progress_bar
  end

  send(step:[action])
  end

  print_divider
  print_divider
  print_divider
  puts "Enjoy your meal!"

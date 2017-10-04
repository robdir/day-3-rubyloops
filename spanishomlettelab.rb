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

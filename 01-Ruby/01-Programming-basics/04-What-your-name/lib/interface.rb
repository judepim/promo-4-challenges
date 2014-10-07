require_relative "compute_name"

puts "what is your first name"


# TODO: ask for the first name
puts "what is your first name"
first_name= gets.chomp

# TODO: ask for the middle name
puts "what is your middle name"
middle_name= gets.chomp

# TODO: ask for the last name
puts "what is your last name"
last_name= gets.chomp

# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
print "Hello" + compute_name(first_name, middle_name, last_name)

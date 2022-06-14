load 'ar.rb'

# CREATING WITH ACTIVE RECORD

# There are three ways to create and persist a new Customer.
# Warning: If you run this script multiple times you will
# end up with duplicate entries in your customers table.

# Method One: Create a Customer in "object space".

new_bread = Bread.new

# Set the required properties.

new_bread.name  = "Samsung"


# Calling save on the object will persist it to the customers table.

new_bread.save

# We can call inspect on any object to inspect its internals.

puts new_bread.inspect



require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Exercise 3: Delete the third store
# Load the third store (into @store3) as you did the other two before.
# Using Active Record's destroy method, delete the store from the database.
# Verify that the store has been deleted by again outputting (putsing) 
# the count (as you did in Exercise 1.)

@store3 = Store.find_by(id: 3)
puts "STORE 3 #{@store3}"
@store3.destroy

puts "STORE 3 #{@store3}"

#this still shows up in the console but in psql that item is NO LONGER THERE




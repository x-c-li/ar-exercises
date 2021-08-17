require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

#load first store from database and assign to instance var @store1
@store1 = Store.find_by(id: 1)
puts "Store1 #{@store1}"
#do the same for store 2
@store2 = Store.find_by(id: 2)
puts "Store2 #{@store2}"

#update first store instance in database, change its name 
@store1.name = 'burnaby'
@store1.save
puts "store1 name #{@store1.name}"
@store2.name = 'richmond'
@store2.save
puts "store2 name #{@store2.name}"



require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#create 3 more stores
surrey = Store.create(
  #Surrey (annual_revenue of 224000, carries women's apparel only)
  name: 'Surrey',
  annual_revenue: 224000, 
  mens_apparel: FALSE, 
  womens_apparel: TRUE
)
whistler = Store.create(
  #Whistler (annual_revenue of 1900000 carries men's apparel only)
  name: 'Whistler',
  annual_revenue: 1900000, 
  mens_apparel: TRUE, 
  womens_apparel: FALSE
)
yaletown = Store.create(
  #Yaletown (annual_revenue of 430000 carries men's and women's apparel)
  name: 'Yaletown',
  annual_revenue: 430000, 
  mens_apparel: TRUE, 
  womens_apparel: TRUE
)

#use where class, find collection of stores w that carry men's apparel
#assign result to @mens_stores

#code needed the order (without it, it errors out)
@mens_stores = Store.where(mens_apparel: TRUE).order(created_at: :desc)
puts "STORES THAT CARRY MENS: #{@mens_stores}"


# Loop through each of these stores and 
# output their name and annual revenue on each line.

@mens_stores.each do |store| 
  puts "STORE NAME: #{store.name}"
  puts "ANNUAL REVENUE: #{store.annual_revenue}"
end


# Do another fetch but this time load stores 
# that carry women's apparel and are generating less than $1M in annual revenue.

# @womens_stores_less_than_1mill = Store.where(womens_apparel: TRUE, "annual_revenue > ?", 1000000).order(annual_revenue)
@womens_stores_less_than_1mill = Store.where(womens_apparel: TRUE).where("annual_revenue < 1000000")

puts "WOMENS STORES THAT HAVE LESS THAN 1MILL IN REVENUE: #{@womens_stores_less_than_1mill}"

#just to see the stores, do the same loop
@womens_stores_less_than_1mill.each do |store| 
  puts "STORE NAME: #{store.name}"
  puts "ANNUAL REVENUE: #{store.annual_revenue}"
end
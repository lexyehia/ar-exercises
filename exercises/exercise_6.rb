require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Bob", last_name: "Doyle", hourly_rate: 600)
@store1.employees.create(first_name: "James", last_name: "Cameron", hourly_rate: 50)
@store1.employees.create(first_name: "Tim", last_name: "Burton", hourly_rate: 88)

@store2.employees.create(first_name: "Mary", last_name: "Lamb", hourly_rate: 90)
@store2.employees.create(first_name: "Diana", last_name: "Moore", hourly_rate: 60)
@store2.employees.create(first_name: "Marcus", last_name: "Aurelius", hourly_rate: 19)
@store2.employees.create(first_name: "Arthur", last_name: "Pendragon", hourly_rate: 21)

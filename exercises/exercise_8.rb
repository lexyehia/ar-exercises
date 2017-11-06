require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'


bob = Employee.new(first_name: "Bob", last_name: "Doyle", hourly_rate: 50)
bob.save
puts bob.password

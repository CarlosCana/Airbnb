# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	dog = Dog.create(name: Faker::Dog.name, race: Faker::Dog.breed, city_id: rand(1..10)) #10fakes dogs
	dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..10))#10 fakes dogsitters
dog.dogsitters << dogsitter#remplis les liaisons
	city = City.create(city: Faker::StarTrek.location)
end

# 10.times do
# 	a = DogSitter.create(name: Faker::Name.first_name#, dogsitter_id: rand(1..10))
# end


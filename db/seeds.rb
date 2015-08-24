# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bob = User.new(name: "Bob", email: "bob@test.com", password: "bob31", phone_number: "0633414278", address: "Gotham City")
spiderman = Hero.new(name: "Spider Man", description: "the coolest super hero", price: "49", user_id: 1)

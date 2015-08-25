# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

peterparker = User.create(name:"Peter Parker", email: "peter@spidey.com", password: "testtest", phone_number: "0660488231")
spiderman = Hero.create(name:"Spider Man", description: "The best spider in the city", price: 45, user_id: peterparker.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Hero.destroy_all

users = [
  {name:"Peter Parker", email: "peter@spidey.com", password: "testtest", phone_number: "0660488231"},
  {name:"Bruce Banner", email: "bruce@hulk.com", password: "testtest", phone_number: "0660588231"},
  {name:"Tony Stark", email: "tony@iron.com", password: "testtest", phone_number: "0660488234"},
  {name:"Bruce Wayne", email: "bruce@bat.com", password: "testtest", phone_number: "0661488231"},
  {name:"David Lisewski", email: "david@kick.com", password: "testtest", phone_number: "0666488231"},
  {name:"Selina Kyle", email: "selina@kitty.com", password: "testtest", phone_number: "0665478231"}
]

heros = [
  {name:"Spider Man", description: "The famous cocky spider.", price: 60, picture: "../app/assets/images/heroes/amazing_spider_man.jpg", user_id: users[0].id},
  {name:"Hulk", description: "You don't want him to get angy.", price: 120, picture: "../app/assets/images/heroes/hulk.jpg", user_id: users[1].id},
  {name:"Iron Man", description: "Rich and classy. A gentleman's choice.", price: 80, picture: "../app/assets/images/heroes/iron_man.jpg", user_id: users[2].id},
  {name:"Batman", description: "The most badass of all!", price: 90, picture: "../app/assets/images/heroes/batman.png", user_id: users[3].id},
  {name:"Kick-Ass", description: "A joke. He doesn't have any power. But he kicks asses.", price: 10, picture: "../app/assets/images/heroes/kick_ass_crew.jpg", user_id: users[4].id},
  {name:"Catwoman", description: "The hottest super-hero ever. A niight with her will be expensive...", price: 290, picture: "../app/assets/images/heroes/catwoman.jpg", user_id: users[5].id}
]


users.each { |user| User.create(user) }
heros.each { |user| User.create(user) }


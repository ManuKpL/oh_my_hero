# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = [
  { name:"Peter Parker", email: "peter@spidey.com", password: "testtest", phone_number: "0660488231" },
  { name:"Bruce Banner", email: "bruce@hulk.com", password: "testtest", phone_number: "0660588231" },
  { name:"Tony Stark", email: "tony@iron.com", password: "testtest", phone_number: "0660488234" },
  { name:"Bruce Wayne", email: "bruce@bat.com", password: "testtest", phone_number: "0661488231" },
  { name:"David Lisewski", email: "david@kick.com", password: "testtest", phone_number: "0666488231" },
  { name:"Selina Kyle", email: "selina@kitty.com", password: "testtest", phone_number: "0665478231" },
  { name:"Bob Doe", email: "bob@gmail.com", password: "testtest", phone_number: "0607080910" }
]

users_with_id = []
users.each do |user|
  users_with_id << User.create(user)
end

heros = [
  { name:"Spider Man", address: "New York", description: "The famous cocky spider.", price: 60, picture: File.open("#{Rails.root}/app/assets/images/heroes/amazing_spider_man.jpg"), user_id: users_with_id[0].id },
  { name:"Hulk", address: "New York", description: "You don't want him to get angy.", price: 120, picture: File.open("#{Rails.root}/app/assets/images/heroes/hulk.jpg"), user_id: users_with_id[1].id },
  { name:"Iron Man", address: "New York", description: "Rich and classy. A gentleman's choice.", price: 80, picture: File.open("#{Rails.root}/app/assets/images/heroes/iron_man.jpg"), user_id: users_with_id[2].id },
  { name:"Batman", address: "New York", description: "The most badass of all!", price: 90, picture: File.open("#{Rails.root}/app/assets/images/heroes/batman.png"), user_id: users_with_id[3].id },
  { name:"Kick-Ass", address: "New York", description: "A joke. He doesn't have any power. But he kicks asses.", price: 10, picture: File.open("#{Rails.root}/app/assets/images/heroes/kick_ass_crew.jpg"), user_id: users_with_id[4].id },
  { name:"Catwoman", address: "New York", description: "The hottest super-hero ever. A niight with her will be expensive...", price: 290, picture: File.open("#{Rails.root}/app/assets/images/heroes/catwoman.jpg"), user_id: users_with_id[5].id }
]

heros_with_id = []
heros.each do |hero|
  heros_with_id << Hero.create(hero)
end

reservations = [
  { check_in: Date.new(2015,5,1), check_out: Date.new(2015,5,3), hero_id: heros_with_id[0].id, user_id: users_with_id[6].id },
  { check_in: Date.new(2015,6,1), check_out: Date.new(2015,6,3), hero_id: heros_with_id[0].id, user_id: users_with_id[6].id }
]

reservations.each { |reservation| Reservation.create(reservation) }

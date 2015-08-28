# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = [
  {
  first_name:"Peter",
  last_name: "Parker",
  email: "peter@spidey.com",
  password: "testtest",
  phone_number: "0660488231"
  },
  {
  first_name:"Bruce",
  last_name: "Banner",
  email: "bruce@hulk.com",
  password: "testtest",
  phone_number: "0660588231"
  },
  {
  first_name:"Tony",
  last_name: "Stark",
  email: "tony@iron.com",
  password: "testtest",
  phone_number: "0660488234"
  },
  {
  first_name:"Bruce",
  last_name: "Wayne",
  email: "bruce@bat.com",
  password: "testtest",
  phone_number: "0661488231"
  },
  {
  first_name:"David",
  last_name: "Lisewski",
  email: "david@kick.com",
  password: "testtest",
  phone_number: "0666488231"
  },
  {
  first_name:"Selina",
  last_name: "Kyle",
  email: "selina@kitty.com",
  password: "testtest",
  phone_number: "0665478231"
  },
  {
  first_name:"Matthew",
  last_name: "Murdock",
  email: "matthew@murdock.com",
  password: "testtest",
  phone_number: "0660488231"
  },
  {
  first_name:"Fantasctic",
  last_name: "Four",
  email: "jessica@alba.com",
  password: "testtest",
  phone_number: "0660588231"
  },
  {
  first_name:"No",
  last_name: "Name",
  email: "joker@joky.com",
  password: "testtest",
  phone_number: "0660488234"
  },
  {
  first_name:"Clark",
  last_name: "Kent",
  email: "clark@dailyplanet.com",
  password: "testtest",
  phone_number: "0661488231"
  },
  {
  first_name:"Thor",
  last_name: "Odinson",
  email: "team@odinson.com",
  password: "testtest",
  phone_number: "0666488231"
  },
  {
  first_name:"Eddie",
  last_name: "Brock",
  email: "eddie@notnice.com",
  password: "testtest",
  phone_number: "0665478231"
  },
  {
  first_name:"Bob",
  last_name: "Doe",
  email: "bob@gmail.com",
  password: "testtest",
  phone_number: "0607080910"
  },

]

users_with_id = []
users.each do |user|
  users_with_id << User.create(user)
end

heros = [
  {
    name:"Spider Man",
    address: "107 Rue Caulaincourt, 75018 Paris",
    description: "The amazing cocky spider.",
    price: 60,
    picture: File.open("#{Rails.root}/app/assets/images/heroes/amazing_spider_man.jpg"),
    user_id: users_with_id[0].id,
    skill: "Do my Laundry"
    },

  {
    name:"Hulk",
    address: "78 Rue Spontini, 75116 Paris",
    description: "You don't want to make him angry.",
    price: 120, picture: File.open("#{Rails.root}/app/assets/images/heroes/hulk.jpg"),
    user_id: users_with_id[1].id,
    skill: "Be my Wingman"
    },

  {
    name:"Iron Man",
    address: "45-47 Rue Cortambert, 75116 Paris",
    description: "Rich and classy. A gentleman's choice.",
    price: 80,
    picture: File.open("#{Rails.root}/app/assets/images/heroes/iron_man.jpg"),
    user_id: users_with_id[2].id,
    skill: "Party & Have Fun"
    },

  {
    name:"Batman",
    address: "11 Rue le Verrier, 75006 Paris",
    description: "Badass. Always badass. ",
    price: 90,
    picture: File.open("#{Rails.root}/app/assets/images/heroes/batman.png"),
    user_id: users_with_id[3].id,
    skill: "Teach Mathematics to my Son"
    },

  {
    name:"Kick-Ass",
    address: "68 Rue Mouffetard, 75005 Paris",
    description: "No superpowers. No girlfriend. He is the worst.",
    price: 10, picture: File.open("#{Rails.root}/app/assets/images/heroes/kick_ass_crew.jpg"), user_id: users_with_id[4].id, skill: "Fight a Bad Guy"
    },
  {
    name:"Catwoman",
    address: "15 Rue Chapon, 75003 Paris",
    description: "A strong and independant woman. Meow.",
    price: 290, picture: File.open("#{Rails.root}/app/assets/images/heroes/catwoman.jpg"), user_id: users_with_id[5].id, skill: "Party & Have Fun" },
  {
    name:"Daredevil",
    address: "33 Rue de Tocqueville, 75017 Paris",
    description: "Blind but a wonderful fighter.",
    price: 75, picture: File.open("#{Rails.root}/app/assets/images/heroes/daredevil.jpg"), user_id: users_with_id[6].id, skill: "Fight a Bad Guy" },
  {
    name:"The Fantastic Four",
    address: "24 Rue du Petit Musc, 75004 Paris",
    description: "Fantastic foursome.",
    price: 300, picture: File.open("#{Rails.root}/app/assets/images/heroes/fantastic_four.jpg"), user_id: users_with_id[7].id, skill: "Party & Have Fun" },
  {
    name:"The Joker",
    address: "55 Rue du Faubourg Saint-Honoré, 75008 Paris",
    description: "Why so serious?",
    price: 80, picture: File.open("#{Rails.root}/app/assets/images/heroes/joker.jpg"), user_id: users_with_id[8].id, skill: "Teach Mathematics to my Son"
    },
  {
    name:"Superman",
    address: "14 Rue du Faubourg Saint-Denis",
    description: "A master of disguise. He knows how to wear underpants.",
    price: 220, picture: File.open("#{Rails.root}/app/assets/images/heroes/superman.jpg"), user_id: users_with_id[9].id, skill: "Do my Laundry"
    },
  {
    name:"Thor",
    address: "68 Rue Larmarck, 75018 Paris",
    description: "He has a very big hammer.",
    price: 50, picture: File.open("#{Rails.root}/app/assets/images/heroes/thor.gif"), user_id: users_with_id[10].id, skill: "Fight a Bad Guy"
    },
  {
    name:"Venom",
    address: "87 Avenue Paul Doumer, 75116 Paris",
    description: "He is an alpha male. Also, he hates spiders.",
    price: 290, picture: File.open("#{Rails.root}/app/assets/images/heroes/venom.jpg"), user_id: users_with_id[11].id, skill: "Be my Wingman"
  }
]

heros_with_id = []
heros.each do |hero|
  heros_with_id << Hero.create(hero)
end

reservations = [
  {
  check_in: Date.new(2015,5,1), check_out: Date.new(2015,5,3), hero_id: heros_with_id[0].id, user_id: users_with_id[12].id, validated: false },
  {
  check_in: Date.new(2015,6,1), check_out: Date.new(2015,6,3), hero_id: heros_with_id[0].id, user_id: users_with_id[12].id, validated: false },
  {
  check_in: Date.new(2015,8,29), check_out: Date.new(2015,8,31), hero_id: heros_with_id[2].id, user_id: users_with_id[12].id, validated: false },
]

reservations.each { |reservation| Reservation.create(reservation) }

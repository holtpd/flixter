# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "testymctesterson2283@gmail.com", password: "Vader1313", password_confirmation: "Vader1313")
# user.courses << Course.create(title: "Intro to intro 1010", description: "Oh so intro", cost: 5.00)
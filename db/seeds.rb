# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l = Location.create(name: "Atlanta")
l.recordings.create(temp: 90, status: "sunny")
l.recordings.create(temp: 85, status: "sunny")
l.recordings.create(temp: 96, status: "cloudy")
l.recordings.create(temp: 103, status: "sunny")

l2 = Location.create(name: "London")
l2.recordings.create(temp: 70, status: "cloudy")
l2.recordings.create(temp: 65, status: "cloudy")
l2.recordings.create(temp: 76, status: "cloudy")
l2.recordings.create(temp: 93, status: "cloudy")
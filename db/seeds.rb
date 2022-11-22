# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning db"
ParkingLot.destroy_all
User.destroy_all
puts "creating users"
g1 = User.create!(email: "someedasmail@gmail.com", password: "fuckyou")
g2 = User.create!(email: "someemdasdail@gmail.com", password: "fuckyou")
g3 = User.create!(email: "someeasdasdadmail@gmail.com", password: "fuckyou")
g4 = User.create!(email: "someedasdmail@gmail.com", password: "fuckyou")
puts "creating and relationating with users"
ParkingLot.create!(address: "qualquer coisa", price: "500", overview:"dsadasdas", user:g1)
ParkingLot.create!(address: "outra coisa", price: "500", overview:"dsadasdas", user:g2)
ParkingLot.create!(address: "alguma coisa", price: "500", overview:"dsadasdas", user:g3)
ParkingLot.create!(address: "nenhuma coisa", price: "500", overview:"dsadasdas",user:g4)
puts "populated"

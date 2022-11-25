# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning db"
Reservation.destroy_all
ParkingLot.destroy_all
User.destroy_all
puts "creating users"
g1 = User.create!(email: "someedasmail@gmail.com", password: "fuckyou")
g2 = User.create!(email: "someemdasdail@gmail.com", password: "fuckyou")
g3 = User.create!(email: "someeasdasdadmail@gmail.com", password: "fuckyou")
g4 = User.create!(email: "someedasdmail@gmail.com", password: "fuckyou")
puts "creating and relationating with users"
ParkingLot.create!(title: "bom", address: "qualquer coisa", price_per_day: "500", overview:"dsadasdas", user:g1, img_url: "https://images.unsplash.com/photo-1506521781263-d8422e82f27a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFya2luZyUyMGxvdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
ParkingLot.create!(title: "bom", address: "outra coisa", price_per_day: "500", overview:"dsadasdas", user:g2, img_url: "https://images.unsplash.com/photo-1590674899484-d5640e854abe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1767&q=80")
ParkingLot.create!(title: "bom", address: "alguma coisa", price_per_day: "500", overview:"dsadasdas", user:g3, img_url: "https://images.unsplash.com/photo-1590938076771-dfe17af4d484?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
ParkingLot.create!(title: "bom", address: "nenhuma coisa", price_per_day: "500", overview:"dsadasdas",user:g4, img_url: "https://images.unsplash.com/photo-1604063155785-ee4488b8ad15?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")
ParkingLot.create!(title: "bom", address: "lmao coisa", price_per_day: "500", overview:"dsadasdas",user:g4, img_url: "https://images.unsplash.com/photo-1604063155785-ee4488b8ad15?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769&q=80")


puts "populated"

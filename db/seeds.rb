Appointement.destroy_all
Machine.destroy_all
User.destroy_all

user1 = User.create!(nickname: 'pot', first_name: 'harry', last_name: 'potter', age: 2, password: "123456", email: "blabla@gmail.com")
user2 = User.create!(nickname: 'pat', first_name: 'Nadal', last_name: 'peter', age: 3, password: "123456", email: "blbla@gmail.com")
machine1 = Machine.create!(brand: 'bosch', capacity: 7, location: 'paris', price: 10, user_id: user2.id)
appointement1 = Appointement.create!(begining_hour: DateTime.now, done: false, machine_id: machine1.id, user_id: user1.id)
puts "appointment created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

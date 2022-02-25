Appointement.destroy_all
Machine.destroy_all
User.destroy_all

user1 = User.create!(nickname: 'Le Riche', first_name: 'Jean-Paul', last_name: 'De Saint Ambroise', age: 75, password: "123456", email: "JP@gmail.com", profile_picture: "https://avatars.githubusercontent.com/u/94915071?v=4")
user2 = User.create!(nickname: 'Le Pauvre', first_name: 'Mike', last_name: 'Jonas', age: 23, password: "123456", email: "Mike@gmail.com", profile_picture: "https://avatars.githubusercontent.com/u/96992987?v=4")
machine1 = Machine.create!(brand: 'bosch', capacity: 7, location: 'paris', price: 10, user_id: user2.id, machine_picture: "img_three.jpg")
machine1 = Machine.create!(brand: 'bosch', capacity: 7, location: 'paris', price: 10, user_id: user2.id, machine_picture: "samsung.jpg")
appointement1 = Appointement.create!(begining_hour: DateTime.now, done: false, machine_id: machine1.id, user_id: user1.id)
puts "appointment created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

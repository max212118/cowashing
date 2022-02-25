Appointement.destroy_all
Machine.destroy_all
User.destroy_all

user1 = User.create!(nickname: 'Le Riche', first_name: 'Jean-Paul', last_name: 'De Saint Ambroise', age: 75, password: "123456", email: "JP@gmail.com")
file = URI.open("https://avatars.githubusercontent.com/u/94915071?v=4")
user1.profile_picture.attach(io: file, filename: user1.nickname)

user2 = User.create!(nickname: 'Le Pauvre', first_name: 'Mike', last_name: 'Jonas', age: 23, password: "123456", email: "Mike@gmail.com")
file = URI.open("https://avatars.githubusercontent.com/u/96992987?v=4")
user2.profile_picture.attach(io: file, filename: user2.nickname)


machine1 = Machine.create!(brand: 'lg', capacity: 7, location: 'paris', price: 10, user_id: user2.id, machine_picture: "img_three.jpg")
file = URI.open("https://www.lg.com/in/images/washing-machines/md07514753/gallery/FHM1065ZDL-Washing-Machines-Front-View-D-01.jpg")
machine1.photo.attach(io: file, filename: machine1.brand)

machine2 = Machine.create!(brand: 'bosch', capacity: 7, location: 'paris', price: 10, user_id: user2.id, machine_picture: "samsung.jpg")
file = URI.open("https://www.electromenager-compare.com/images/pdts/xl/BOSWAQ28361FF.jpg")
machine2.photo.attach(io: file, filename: machine1.brand)

appointement1 = Appointement.create!(begining_hour: DateTime.now, done: false, machine_id: machine1.id, user_id: user1.id)
puts "appointment created"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

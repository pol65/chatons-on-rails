# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Item.destroy_all
#User.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('items')
#ActiveRecord::Base.connection.reset_pk_sequence!('users')

n = 0

items = []
20.times do
    n = n+1
    items << Item.create(
        title: Faker::Creature::Cat.name,
        description: "Ce magnifique chachat est de race #{Faker::Creature::Cat.breed}. Il s'appelle #{Faker::Creature::Cat.name} et a #{Faker::Number.between(from: 1, to: 16)} ans. Tu ne le sais peut-être pas encore, mais il t'aime.",
        price: Faker::Number.between(from: 5, to: 1000),
        image_url: "https://www.animalcare.ud.it/wp-content/uploads/2017/04/Webp.net-resizeimage-14-500x637.jpg"
    )
end

#users = 
#5.times do
 #   n = n+1
#    users << User.create(
 #     first_name: Faker::Name.first_name,
  #      last_name: Faker::Name.last_name,
   #     email: "chatononrails#{n}@yopmail.com",

    #)*
#end

puts "********** Seed done. **********"
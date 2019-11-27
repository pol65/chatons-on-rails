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
img = ["https://cdn.wallpapersafari.com/78/80/AZFfXz.jpg","https://wallpaperaccess.com/full/472905.jpg","https://images.freeimages.com/images/small-previews/3b4/my-cats-1-1405121.jpg","https://wallpaperplay.com/walls/full/4/6/0/149879.jpg","https://img3.goodfon.com/wallpaper/big/b/37/travinki-koshka-kot-seryy.jpg","https://cache.desktopnexus.com/thumbseg/2285/2285536-bigthumbnail.jpg","http://pavbca.com/walldb/original/5/c/2/580074.jpg","https://desktopwallpaper.live/wp-content/uploads/2019/06/weird-cat-wallpapers-4.jpg","https://cache.desktopnexus.com/thumbseg/2372/2372334-bigthumbnail.jpg",
"http://brandthunder.com/wp/wp-content/uploads/2015/06/kitten-lying-on-back-desktop-wallpaper.jpg","http://pavbca.com/walldb/original/8/2/7/406841.jpg","https://images8.alphacoders.com/101/thumb-350-1017325.jpg","https://wallpapertag.com/wallpaper/middle/5/0/3/878373-widescreen-animal-background-pictures-1920x1080.jpg","https://wallpapertag.com/wallpaper/middle/f/c/2/835017-download-funny-animal-desktop-backgrounds-1920x1080.jpg","https://i.pinimg.com/originals/00/f1/5a/00f15a0797be66fad76fb48024aa43aa.jpg","http://ppcdn.500px.org/46663208/f97e348f1d11039dc8ea8ebb49e5bef2488ed321/4.jpg",
"http://ppcdn.500px.org/51147410/4ca1dc30a145a519be8ed07fbb9c6d9beffc5c23/4.jpg","http://ppcdn.500px.org/36799264/de3fd4ccf6177696ad7e4071a433de968572af74/4.jpg","http://ppcdn.500px.org/34201366/1b608e25fbb3affda56f6eaffe237494d5a865f8/4.jpg","http://ppcdn.500px.org/46515226/cede29c5db6f9070d53b3d034c30b50c0256b89d/4.jpg"]
items = []
20.times do
    n = n+1
    items << Item.create(
        title: Faker::Creature::Cat.name,
        description: "Ce magnifique chachat est de race #{Faker::Creature::Cat.breed}. Il s'appelle #{Faker::Creature::Cat.name} et a #{Faker::Number.between(from: 1, to: 16)} ans. Tu ne le sais peut-être pas encore, mais il t'aime.",
        price: Faker::Number.between(from: 5, to: 1000),
        image_url: img.sample
    )
end

#users = []
#20.times do
#    n = n+1
#    users << User.create(
#        first_name: Faker::Name.first_name,
#        last_name: Faker::Name.last_name,
#        email: "chatononrails#{n}@yopmail.com",
#
#    )
# end

puts "********** Seed done. **********"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.delete_all

Restaurant.create(name: Faker::Restaurant.unique.name, rating: rand(1...10), image: "https://cdn.vox-cdn.com/thumbor/7R3pCpbHR2SwPSmyUDOruUKHtpk=/0x0:1000x663/1200x900/filters:focal(420x252:580x412):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62587121/upload.0.0.0.0.0.0.png")
Restaurant.create(name: Faker::Restaurant.unique.name, rating: rand(1...10), image: "https://media1.fdncms.com/inlander/imager/u/original/17317839/food2-1-6faaa6ff8a8a3ce1.jpg")
Restaurant.create(name: Faker::Restaurant.unique.name, rating: rand(1...10), image: "https://assets.dmagstatic.com/wp-content/uploads/2019/09/khao-noodle-shop-laos-food-1200x800-677x451.jpg")
Restaurant.create(name: Faker::Restaurant.unique.name, rating: rand(1...10), image: "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/slideshows/worst_restaurant_meal_slideshow/1800x1200_worst_restaurant_meal_slideshow_alt.jpg")
Restaurant.create(name: Faker::Restaurant.unique.name, rating: rand(1...10), image: "https://www.foodanddrink-antigua.com/wp-content/uploads//2014/01/Food-Drink-Antigua-La-Tartaruga-Italian-restaurant-04-b62aeff500516ee3b8b075d97c725321.jpg")

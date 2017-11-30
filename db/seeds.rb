# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Houjicha", description: "Brown tea. Smells great. Good for stomach aches.", colour: "green", price: 34.99, image_url: 'hjcha.jpeg')
Product.create(name: "Genmaicha", description: "Nice green tea with tasty yellow things in it.", colour: "green", price: 39.99, image_url: 'gmcha.jpeg')
Product.create(name: "Oolong Tea", description: "A dark Chinese tea. Healthy for you.", colour: "black", price: 64.99, image_url: 'ooloncha.jpeg')
Product.create(name: "Gyokuro Powder", description: "Super high caffeine tea. Don't drink at night.", colour: "green", price: 69.99, image_url: 'gyokuropowder.jpeg')

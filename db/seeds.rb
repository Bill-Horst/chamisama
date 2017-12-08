# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.create(name: "Houjicha", description: "Brown tea. Smells great. Good for stomach aches.", colour: "green", price: 34.99, image_url: 'hjcha.jpeg')
# Product.create(name: "Genmaicha", description: "Nice green tea with tasty yellow things in it.", colour: "green", price: 39.99, image_url: 'gmcha.jpeg')
# Product.create(name: "Oolong Tea", description: "A dark Chinese tea. Healthy for you.", colour: "black", price: 64.99, image_url: 'ooloncha.jpeg')
# Product.create(name: "Gyokuro Powder", description: "Super high caffeine tea. Don't drink at night.", colour: "green", price: 69.99, image_url: 'gyokuropowder.jpeg')
Product.delete_all
Product.create(
  [
    {
      name: 'Houjicha',
      description: 'A brown-ish roasted green tea.',
      image_url: 'hjcha.jpg',
      colour: 'green',
      country: 'Japan',
      price: '21.99'
    },
    {
      name: 'Genmaicha',
      description: 'Green tea with roasted brown rice.',
      image_url: 'gmcha.jpg',
      colour: 'green',
      country: 'Japan',
      price: '45.99'
    },
    {
      name: 'Oolong Tea',
      description: 'A partially fermented Chinese tea.',
      image_url: 'ooloncha.jpg',
      colour: 'black',
      country: 'China',
      price: '19.99'
    },
    {
      name: 'Imperial Dragon',
      description: 'A Chinese green tea.',
      image_url: 'imp_drag.jpg',
      colour: 'green',
      country: 'China',
      price: '69.99'
    },
    {
      name: 'Gyokuro Powder',
      description: 'High caffeine green tea powder.',
      image_url: 'gyokuropowder.jpg',
      colour: 'green',
      country: 'Japan',
      price: '99.99'
    },
    {
      name: 'Shizuoka Black Tea',
      description: 'Black "Red" tea from Shizuoka.',
      image_url: 'shizu_black.jpg',
      colour: 'black',
      country: 'Japan',
      price: '34.99'
    },
    {
      name: 'Sanpincha',
      description: 'Green tea with jasmine from Okinawa.',
      image_url: 'sanpin.jpg',
      colour: 'green',
      country: 'Japan',
      price: '24.99'
    },
    {
      name: 'Dianhong',
      description: 'Dark golden bud tea.',
      image_url: 'dianhong.jpg',
      colour: 'black',
      country: 'China',
      price: '39.99'
    },
    {
      name: 'Teacup Set',
      description: 'Set of four Japanese teacups',
      image_url: 'teacups.jpg',
      colour: '',
      country: '',
      price: '39.99'
    },
    {
      name: 'Brewer',
      description: 'Perfect for brewing loose tea.',
      image_url: 'brewer.jpg',
      colour: '',
      country: '',
      price: '69.99'
    }
  ]
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Product.delete_all

Product.create(
  [
    {
      name: 'Genmaicha',
      description: 'Green tea with roasted brown rice.',
      image_url: 'gmcha.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '4599'
    },
    {
      name: 'Oolong Tea',
      description: 'A partially fermented Chinese tea.',
      image_url: 'ooloncha.jpg',
      colour: 'black',
      country: 'China',
      price_in_pennies: '1999'
    },
    {
      name: 'Houjicha',
      description: 'A brown-ish roasted green tea.',
      image_url: 'hjcha.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2199'
    },
    {
      name: 'Brewer',
      description: 'For brewing loose tea.',
      image_url: 'brewer.jpg',
      colour: '',
      country: '',
      price_in_pennies: '6999'
    },
    {
      name: 'Imperial Dragon',
      description: 'A Chinese green tea.',
      image_url: 'imp_drag.jpg',
      colour: 'green',
      country: 'China',
      price_in_pennies: '6999'
    },
    {
      name: 'Gyokuro Powder',
      description: 'High caffeine green tea powder.',
      image_url: 'gyokuropowder.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '9999'
    },
    {
      name: 'Ryokucha',
      description: 'Standard green tea.',
      image_url: 'ryokucha.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2399'
    },
    {
      name: 'Shizuoka Black Tea',
      description: 'Black "Red" tea from Shizuoka.',
      image_url: 'shizu_black.jpg',
      colour: 'black',
      country: 'Japan',
      price_in_pennies: '3499'
    },
    {
      name: 'Sanpincha',
      description: 'Green tea with jasmine from Okinawa.',
      image_url: 'sanpin.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2499'
    },
    {
      name: 'Dianhong',
      description: 'Dark golden bud tea.',
      image_url: 'dianhong.jpg',
      colour: 'black',
      country: 'China',
      price_in_pennies: '3999'
    },
    {
      name: 'Teacup Set',
      description: 'Set of four Japanese teacups',
      image_url: 'teacups.jpg',
      colour: '',
      country: '',
      price_in_pennies: '3999'
    }
  ]
)

Comment.create(
  [
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Great product',
      rating: 5,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'NO!',
      rating: 1,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Superb quality',
      rating: 5,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Pretty good!',
      rating: 4,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Terrible!',
      rating: 1,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Not great',
      rating: 2,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Ok',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Good thing!',
      rating: 4,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'So so',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'I\'m glad it\'s healthy',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Great product',
      rating: 5,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'NO!',
      rating: 1,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Superb quality',
      rating: 5,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Pretty good!',
      rating: 4,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Terrible!',
      rating: 1,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Not great',
      rating: 2,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Ok',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'Good thing!',
      rating: 4,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
    {
      body: 'So so',
      rating: 3,
      user_id: User.order("RANDOM()").first.id,
      product_id: Product.order("RANDOM()").first.id
    },
  ]
)

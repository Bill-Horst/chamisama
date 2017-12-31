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
      price_in_pennies: '4599',
      story: 'Genmaicha (玄米茶, "brown rice tea"), also called brown rice green tea, is the Japanese name for green tea combined with roasted brown rice. It is sometimes referred to colloquially as "popcorn tea" because a few grains of the rice pop during the roasting process and resemble popcorn. Although today it is consumed by all segments of society, this type of tea was originally drunk by poor Japanese, as the rice served as a filler and reduced the price of the tea, which is why it is also known as the "people\'s tea".'
    },
    {
      name: 'Oolong Tea',
      description: 'A partially fermented Chinese tea.',
      image_url: 'ooloncha.jpg',
      colour: 'black',
      country: 'China',
      price_in_pennies: '1999',
      story: 'Oolong ( /ˈuːlɒŋ/) (simplified Chinese: 乌龙; traditional Chinese: 烏龍; pinyin: wūlóng) is a traditional Chinese tea (Camellia sinensis) produced through a process including withering the plant under strong sun and oxidation before curling and twisting. Most oolong teas, especially those of fine quality, involve unique tea plant cultivars that are exclusively used for particular varieties. The degree of oxidation can range from 8–85%, depending on the variety and production style.'
    },
    {
      name: 'Houjicha',
      description: 'A brown-ish roasted green tea.',
      image_url: 'hjcha.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2199',
      story: 'Hōjicha (ほうじ茶) is a Japanese green tea. It is distinctive from other Japanese green teas because it is roasted in a porcelain pot over charcoal, whereas most Japanese teas are steamed. The tea is fired at a high temperature, altering the leaf color tints from green to reddish brown. The process was first performed in Kyoto, Japan, in the 1920s and its popularity persists today.'
    },
    {
      name: 'Brewer',
      description: 'For brewing loose tea.',
      image_url: 'brewer.jpg',
      colour: '',
      country: '',
      price_in_pennies: '6999',
      story: 'A kyūsu (急須) is a traditional Japanese teapot mainly used for brewing green tea.The common misconception is that a kyūsu always has a side handle. However, the word "kyūsu" merely means "teapot", even though in common usage kyūsu usually does refer to a teapot with a side handle. The two most common types of kyūsu are yokode kyūsu (横手急須 side hand(le) teapot), which has a side handle and which is the more common type, and ushirode kyūsu (後手急須 back hand(le) teapot), which has a rear handle, just like teapots in other parts of the world.'
    },
    {
      name: 'Imperial Dragon',
      description: 'A Chinese green tea.',
      image_url: 'imp_drag.jpg',
      colour: 'green',
      country: 'China',
      price_in_pennies: '6999',
      story: 'Native to the shores of West Lake near Hangzhou, the old emperor city, this legendary and prized green tea unfolds with a great, flower-like bouquet underscored by notes of fresh cinnamon buns. The “Dragonwell” Long Jing appeals with a wonderfully smooth, full-bodied taste. It\'s wonderful to drink while watching the sunset with your panther.'
    },
    {
      name: 'Gyokuro Powder',
      description: 'High caffeine green tea powder.',
      image_url: 'gyokuropowder.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '9999',
      story: 'Gyokuro (Japanese: 玉 露, "jade dew") is a type of shaded green tea from Japan. It differs from the standard sencha (a classic unshaded green tea) in being grown under the shade rather than the full sun. Gyokuro also differs from another shaded tea called kabusecha (lit., "covered tea"), in the length of time it undergoes the final growth under the shade (gyokuro is shaded for approximately three weeks, while kabusecha is shaded for approximately one week). The name "gyokuro" translates as "jewel dew" (or "jade dew", referring to the pale green colour of the infusion).'
    },
    {
      name: 'Ryokucha',
      description: 'Standard green tea.',
      image_url: 'ryokucha.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2399',
      story: 'Green tea (緑茶) is a type of tea that is made from Camellia sinensis leaves that have not undergone the same withering and oxidation process used to make oolong and black tea. Green tea originated in China, but its production has spread to many countries in Asia.Several varieties of green tea exist, which differ substantially because of the variety of C. sinensis used, growing conditions, horticultural methods, production processing, and time of harvest.'
    },
    {
      name: 'Shizuoka Black Tea',
      description: 'Black (Red) tea from Shizuoka.',
      image_url: 'shizu_black.jpg',
      colour: 'black',
      country: 'Japan',
      price_in_pennies: '3499',
      story: 'While 99% of tea produced in Japan is green tea, this Japanese black tea breaks from tradition. It is black, not green. There was no Wikipedia article to copy and paste about this tea so this writer had a choice: to make stuff up, or just type randomly until there was just about the right number of characters to neatly fill the panel for this page. He chose the latter.'
    },
    {
      name: 'Sanpincha',
      description: 'Green tea with jasmine from Okinawa.',
      image_url: 'sanpin.jpg',
      colour: 'green',
      country: 'Japan',
      price_in_pennies: '2499',
      story: 'Sanpin-cha (さんぴん茶) is the most famous jasmine tea originating in Okinawa.  Sanpin-cha is considered Chinese-style tea, and it has a lovely fragrance.  On the mainland it is usually labelled ジャスミン茶 (Jasmine Tea). Typically it also less caffeine than regular tea. It has been a favorite in Okinawa since the days of the Ryukyu Kingdom. Originating with the trade between the Ryukyu Kingdom and China, the tea is an example of the mixture of Chinese and Japanese influence in the islands.'
    },
    {
      name: 'Dianhong',
      description: 'Dark golden bud tea.',
      image_url: 'dianhong.jpg',
      colour: 'black',
      country: 'China',
      price_in_pennies: '3999',
      story: 'Dianhong tea (Chinese: 滇紅茶; pinyin: Diān hóng chá; literally: "Dian Lake red tea"; pronounced [tjɛ́n xʊ̌ŋ ʈʂʰǎ]) is a type of relatively high-end, gourmet Chinese black tea sometimes used in various tea blends and grown in Yunnan Province, China. The main difference between Dianhong and other Chinese black teas is the amount of fine leaf buds, or "golden tips," present in the dried tea. Dianhong teas produces a brew that is brassy golden orange in colour with a sweet, gentle aroma and no astringency.'
    },
    {
      name: 'Teacup Set',
      description: 'Set of four Japanese teacups.',
      image_url: 'teacups.jpg',
      colour: '',
      country: '',
      price_in_pennies: '3999',
      story: 'This teacup set enables the user to drink tea, and only tea, at any time of the day the user wishes. There are four of them, which means the user can either drink four different kinds of tea at once, or the same kind of tea in succession without having to wash the teacup before drinking again. In such a case, it is best to at least rinse the cup while it sits in the sink so that it is easier to wash when it comes time.'
    }
  ]
)

Comment.create(
  [
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Great product',
      rating: 5,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'NO!',
      rating: 1,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Superb quality',
      rating: 5,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Pretty good!',
      rating: 4,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      rating: 1,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Not great',
      rating: 2,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Ok',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Good thing!',
      rating: 4,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'So so',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'I\'m glad it\'s healthy',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Great product',
      rating: 5,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'NO!',
      rating: 1,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Superb quality',
      rating: 5,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Pretty good!',
      rating: 4,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Terrible!',
      rating: 1,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Ok, not bad',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Not great',
      rating: 2,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Ok',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'Good thing!',
      rating: 4,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    },
    {
      body: 'So so',
      rating: 3,
      user_id: User.order('RANDOM()').first.id,
      product_id: Product.order('RANDOM()').first.id
    }
  ]
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
item1 = Item.create(name:"La Souris Sourini", price: 1149, photo: "https://cdn.lasourisscooters.nl/la-souris/scooter/800/627_16317101986141ebf759881.jpg", description: "The De Sourini scooter is a typical La Souris or stylish scooter. The Dit Sportieve Scootermodel is a designer of the doors.")
Item.create(name:"Senzo Urban", price: 1199, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/s/e/senzo_urban_euro5.png", description: "The Senzo Urban never goes unnoticed. This stylish scooter is a real eye-catcher. The streamlined design and the low seat height make this model, as the name suggests, a real city scooter.")
Item.create(name:"Sourini RS", price: 1599, photo: "https://cdn.lasourisscooters.nl/la-souris/scooter/800/660_16184052266076e76b177fa.jpg", description: "The Sourini RS - Special Edition model is the sports line of the Sourini models. This exclusive model is characterized by its square halogen headlight, cool horizontal front grill, LED rear lights.")
Item.create(name:"Senzo Rivalux S", price: 1249, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/r/i/rivalux_s_matzwart_achterkant.png", description: "The Senzo Rivalux S is inspired by the famous Vespa S, but has a nicer price tag. In addition, it is equipped with all the comforts you need. Charge your smartphone on the go and store small items neatly in the glove box.")
Item.create(name:"Senzo Special R", price: 1009, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/s/e/senzo-rivalux-r-special-matgrijs-voorkant-euro5.png", description: "A Vespa S for less than 1,100 euros, isn't it? Could be! Or at least as good as. Meet the Senzo RivaLux R Special. The designers of this typical Dutch scooter with Italian appearance were clearly inspired by the world famous Vespa S.")
Item.create(name:"Piaggio Zip S", price: 2099, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/p/i/piaggio_zip50s_grigio_2019_.png", description: "The Piaggio Zip S is a typical Piaggio scooter: high quality, modern design and excellent driving characteristics, for a very attractive price. Suitable for any scooter situation!")
Item.create(name:"IVA E-GO S4 ", price: 1800, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/i/v/iva-ego-s4-matblauw-voorkant.jpg", description: "This matte blue IVA E-GO S4 is another beautiful e-scooter from IVA with an excellent price-quality ratio. With the powerful, reliable Bosch motor and removable battery you already have a lot of comfort.")
Item.create(name:"IVA E-GO S2 ", price: 1349, photo: "https://www.voordeelscooters.nl/media/catalog/product/cache/cf22dcdb6d2158713bbbed88e2c091bb/i/v/iva_e-go_s2_matzwart_voorkant.jpg", description: "The IVA E-GO S2 is a no-nonsense e-scooter in a light, simple design. An ideal model for affordable electric driving! The IVA E-GO S2 is equipped with a removable lithium battery and comes with a case in color.")

user1 = User.create(email: "myemail@email.com", password: "password")


reserved = Reserved.create(user_id: user1.id, item_id: item1.id)
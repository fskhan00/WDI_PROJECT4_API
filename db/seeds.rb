# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all
User.destroy_all
Review.destroy_all

# t.integer "rooms"
# t.decimal "price"
# t.string "address_line1"
# t.string "address_line2"
# t.string "city"
# t.string "post_code"
# t.string "country"
# t.decimal "lat"
# t.decimal "long"
# t.boolean "available"
# t.date "start_date"
# t.date "end_date"
# t.bigint "user_id"
# image



u1 = User.create!(first_name: "Rane", last_name: "Gowan", email: "rane@ga.co", image: "https://qph.ec.quoracdn.net/main-qimg-086aa55444d8dd0696e9edb94331ad65-c", username: "rgowan", password: "password", password_confirmation: "password")
u2 = User.create!(first_name: "Faisal", last_name: "Khan", email: "fasial@ga.co", image: "https://i.pinimg.com/originals/cf/e3/8e/cfe38e0e4eb1716fc38dc2aafa949a60.jpg", username: "fkhan", password: "password", password_confirmation: "password")
u3 = User.create!(first_name: "Ed", last_name: "Compton", email: "ed@ga.co", image: "http://www.menshairstyles.net/d/35145-1/good+looking+men+hairstyle.jpg", username: "ecompton", password: "password", password_confirmation: "password")
u4 = User.create!(first_name: "Mia", last_name: "Jay", email: "mjay@ga.co", image: "https://i9.dainikbhaskar.com/thumbnails/600x519/web2images/www.dailybhaskar.com/2015/05/25/femalepoliticians6_143252.jpg", username: "mjay", password: "password", password_confirmation: "password")
u5 = User.create!(first_name: "Ria", last_name: "Tusang", email: "rtusang@ga.co", image: "http://ussalon.website/wp-content/uploads/2016/08/examples-of-women-with-largelong-chinswomen-with-large-chinsthe-incredible-along-with-stunning-women-with-large-chins-intended-for-style-good-looking-for-simplicity-400x588.jpg", username: "rtusang", password: "password", password_confirmation: "password")
u6 = User.create!(first_name: "Ali", last_name: "Ahmed", email: "aahmed@ga.co", image: "https://i0.wp.com/www.newlove-makeup.com/wp-content/uploads/2016/07/Shehryar-Munawar-Siddiqui.jpg?resize=397%2C600", username: "aahmed", password: "password", password_confirmation: "password")





r1 = Rental.create!(rooms: 4, address_line1: "30 Clifton Road", post_code: "W9 1ST", city: "London", image: "https://t-ec.bstatic.com/images/hotel/max1024x768/940/94032700.jpg", available: true, user_id: u1.id)
r2 = Rental.create!(rooms: 5, address_line1: "55 Biffton Avenue", post_code: "E1 48Q", city: "Manchester", image: "http://www.cityam.com/assets/uploads/main-image/cam_narrow_article_main_image/2015/07/london-houses-bike-greenwich-getty-1024x640-57ed9e2263323-57ed9e2283b92.jpg", available: true, user_id: u1.id)
r3 = Rental.create!(rooms: 3, address_line1: "21 Ale Road", post_code: "SW1 2NG", city: "Liverpool", image: "http://i.telegraph.co.uk/multimedia/archive/03569/10-foot-wide-prope_3569844b.jpg", available: true, user_id: u2.id)
r4 = Rental.create!(rooms: 2, address_line1: "32 Brent Road", post_code: "NW1 2PG", city: "London", image: "https://lid.zoocdn.com/645/430/188d952a6478257f5191e8b4cb6c17175e0a8258.jpg", available: true, user_id: u2.id)
r5 = Rental.create!(rooms: 3, address_line1: "3 Streatham Road", post_code: "SW16 2PG", city: "London", image: "https://static1.squarespace.com/static/582542aa9f745688562bc0ea/5825f6a1be6594963a7d9161/58a97fe829687f223f035634/1487503374602/london-property-photos-best-photographer-photographers-hampstead-external-photography-3.jpg?format=1000w", available: true, user_id: u3.id)
r6 = Rental.create!(rooms: 2, address_line1: "33 tooting Road", post_code: "SW12 2RG", city: "Manchester", image: "http://media.architecturaldigest.com/photos/55f9dfcf14adf283236d8f51/master/pass/dam-images-daily-2015-04-london-townhouse-london-estate-for-sale-modern-architecture-01.jpg", available: true, user_id: u3.id)
r7 = Rental.create!(rooms: 4, address_line1: "22 Brixton Road", post_code: "SW1 2RG", city: "London", image: "http://media.rightmove.co.uk/dir/49k/48928/41479083/48928_STS150060_IMG_61_0000_max_656x437.jpg", available: true, user_id: u2.id)
r8 = Rental.create!(rooms: 4, address_line1: "2 Earls Court", post_code: "SW5 9FE", city: "London", image: "http://mr2.homeflow-assets.co.uk/files/site_asset/image/3310/2107/_x_/film_locations.jpg", available: true, user_id: u4.id)
r9 = Rental.create!(rooms: 3, address_line1: "24 Acton Court", post_code: "NW5 9FE", city: "Manchester", image: "http://chips.chestertons.com/a/i/chips/che/Chiswick/Picture+No.+16-CHK170002_16/JPG/l-766x511.jpg", available: true, user_id: u3.id)
r10 = Rental.create!(rooms: 2, address_line1: "24 Newton Lane", post_code: "LW5 9FE", city: "Leeds", image: "http://www.borthwicks.co.uk/images/page1_pic4b.jpg", available: true, user_id: u5.id)
r11 = Rental.create!(rooms: 4, address_line1: "24 Brick Lane", post_code: "EW5 9FE", city: "London", image: "http://www.arrivehomes.com/images/properties/east/13-albert-road-1.jpg", available: true, user_id: u5.id)
r12 = Rental.create!(rooms: 3, address_line1: "24 Marker Lane", post_code: "EW5 9FE", city: "Manchester", image: "http://www.debbiepellum.com/images/props/fresno/full/481585.jpg", available: true, user_id: u1.id)
r13 = Rental.create!(rooms: 5, address_line1: "2 End Lane", post_code: "LW5 9FE", city: "Leeds", image: "https://li.zoocdn.com/07bac69496302c1b78915fad220a894bdc4a6af6_354_255.jpg", available: true, user_id: u1.id)
r14 = Rental.create!(rooms: 2, address_line1: "124 Park Royal Lane", post_code: "NW5 9FE", city: "London", image: "http://www.cherylshields.com/layouts/cherylshields-10452/images/frontpage.jpg", available: true, user_id: u3.id)
r15 = Rental.create!(rooms: 3, address_line1: "124 Lambeth Road", post_code: "SW1 9FE", city: "London", image: "https://imagescaler.hbpl.co.uk/resize/scaleWidth/614/cached.offlinehbpl.hbpl.co.uk/news/ORP/MotcombSt-20161219034503748.jpg", available: true, user_id: u4.id)





re1 = Review.create!(ranking: 4, review: "Expensive Shh", user_id: u1.id, rental_id: r1.id)
re2 = Review.create!(ranking: 2, review: "Alright!", user_id: u2.id, rental_id: r2.id)
re3 = Review.create!(ranking: 5, review: "Beautiful and clean", user_id: u3.id, rental_id: r3.id)
re4 = Review.create!(ranking: 3, review: "Nice and easy access to tubestation.", user_id: u4.id, rental_id: r4.id)
re5 = Review.create!(ranking: 4, review: "Please keep it clean", user_id: u5.id, rental_id: r5.id)
re6 = Review.create!(ranking: 5, review: "A+, love it.", user_id: u6.id, rental_id: r6.id)



# t.integer "ranking"
# t.text "review"
# t.bigint "user_id"
# t.integer "rental_id"

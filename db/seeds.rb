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



u1 = User.create!(first_name: "Rane", last_name: "Gowan", email: "rane@ga.co", image: "http://fillmurray.com/300/300", username: "rgowan", password: "password", password_confirmation: "password")
u2 = User.create!(first_name: "Faisal", last_name: "Khan", email: "fasial@ga.co", image: "http://fillmurray.com/300/301", username: "fkhan", password: "password", password_confirmation: "password")
u3 = User.create!(first_name: "Ed", last_name: "Compton", email: "ed@ga.co", image: "http://fillmurray.com/300/302", username: "ecompton", password: "password", password_confirmation: "password")

r1 = Rental.create!(rooms: 4, address_line1: "30 Clifton Road", post_code: "W9 1ST", city: "London", image: "https://t-ec.bstatic.com/images/hotel/max1024x768/940/94032700.jpg", available: true, user_id: u2.id)
r2 = Rental.create!(rooms: 5, address_line1: "55 Biffton Avenue", post_code: "E1 48Q", city: "London", image: "http://www.cityam.com/assets/uploads/main-image/cam_narrow_article_main_image/2015/07/london-houses-bike-greenwich-getty-1024x640-57ed9e2263323-57ed9e2283b92.jpg", available: true, user_id: u1.id)
r3 = Rental.create!(rooms: 1, address_line1: "21 Ale Road", post_code: "SW1 2NG", city: "London", image: "http://i.telegraph.co.uk/multimedia/archive/03569/10-foot-wide-prope_3569844b.jpg", available: true, user_id: u1.id)

re1 = Review.create!(ranking: 4, review: "Expensive Shh", user_id: u1.id, rental_id: r1.id)
re2 = Review.create!(ranking: 2, review: "Alright!", user_id: u2.id, rental_id: r2.id)
re3 = Review.create!(ranking: 5, review: "Please keep it clean", user_id: u3.id, rental_id: r3.id)


# t.integer "ranking"
# t.text "review"
# t.bigint "user_id"
# t.integer "rental_id"

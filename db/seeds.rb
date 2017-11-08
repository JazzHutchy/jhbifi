# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'a@a.com', password: 'password')
User.create!(email: 'b@b.com', password: 'password')
User.create!(email: 'c@c.com', password: 'password')

Profile.create!(name: 'Bob', country_code: 'au', state: 'Victoria', city: 'Melbourne', address: '123 Fake Street', phone_number: 1111-111-111, user_id: 1)
Profile.create!(name: 'Rachel', country_code: 'au', state: 'Victoria', city: 'Melbourne', address: '456 Real Street', phone_number: 1111-111-111, user_id: 2)
Profile.create!(name: 'Dan', country_code: 'au', state: 'Victoria', city: 'Melbourne', address: '789 Real Fake Street', phone_number: 1111-111-111, user_id: 3)

Listing.create!(title: 'Brand New Vaccuum Cleaner', description: 'I have a new Dyson Vaccuum which I never opened up and I would like to upgrade to a newer model that I just discovered. I want to sell this cleaner for ideally $100, though the price is negotiatable.', list_date: "2017-10-4", user_id: 1)
Listing.create!(title: 'Honda Jazz used GET YOURS TODAY', description: 'Get yourself a Honda Jazz, the ultimate car for a person with good taste in cars!', price: 30000, list_date: "2017-6-19", user_id: 2)
Listing.create!(title: 'Used copy of Call of Duty 4', description: "I've played this game for 10 years but now I need to give it away as I don't play it anymore. You can experience this gem of a game for the right price!", price: 30, list_date: "2017-9-17", user_id: 3)

Review.create!(rating: 9, content: "Top bloke, great seller", user_id: 1)
Review.create!(rating: 3, content: "This guy is a knob, don't buy from him!", user_id: 2)
Review.create!(rating: 5, content: "Has trouble paying on time but he gets the job done", user_id: 3)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
places = Place.create([{name: 'Space E. Um Cafe', yelp_url: 'https://www.yelp.com/biz/space-e-um-cafe-los-angeles-2'}, {name: 'Kleverdog'}])
quest = Quest.create(description: "pick up mails at Kleverdog and have coffee at Space Eum Cafe")
quest.places.push places.first(2)

q = Quest.create(description: "work for a day at Kleverdog")
q.places << Place.find_by(name: 'Kleverdog')

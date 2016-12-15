# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Venue.destroy_all
Band.destroy_all
      #VENUE SEED FILES
    venue1 = Venue.create!([{ name: 'The Cavern', bio: 'Super fun times at King and Church', email: 'thecavern@gmail.com', phone_num: 1234567890 }])
    venue2 = Venue.create!([{ name: 'Sneaky Dees', bio: 'A great venue at College & Bathurst', email: 'sneakydees@gmail.com', phone_num: 1234567890 }])
      #BAND SEED FILES
    band1 = Band.create!([{ name: 'Sparkle Planet', bio: 'We play sparklecore music all the time, you cant stop us from playing that sparklecore it is so great. I cant remember the last time we didnt play sparklecore, I tell ya. It is just simply the best music out there, you have no idea guys. Simply the best. It is really a perfect blend of sparkle music, and core music - which is really where it gets that sparklecore tone, come check out our sparkle music!", email: 'sparkleplanet@gmail.com', password: 'password', password_confirmation: 'password', image: "http://kultscene.com/wp-content/uploads/2015/03/Victim-Mentality-1.jpg" }])
    band2 = Band.create!([{ name: 'Lords of Kitten', bio: 'We are really into metalcore, but what we mostly care about is kittens', email: 'lordsofkitten@gmail.com', password: 'password', password_confirmation: 'password' }])
    band3 = Band.create!([{ name: 'Google Bears', bio: 'We wear bear costumes at our shows', email: 'googlebears@gmail.com', password: 'password', password_confirmation: 'password' }])

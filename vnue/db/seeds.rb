# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

      #VENUE SEED FILES
    venue1 = Venue.create([{ name: 'The Cavern', bio: 'Super fun times at King and Church', email: 'thecavern@gmail.com', phone_num: 1234567890 }])
    venue2 = Venue.create([{ name: ' Sneaky Dees', bio: 'A great venue at College & Bathurst', email: 'sneakydees@gmail.com', phone_num: 1234567890 }])
      #BAND SEED FILES
    band1 = Band.create([{ name: 'Sparkle Planet', bio: 'We play sparklecore music', email: 'sparkleplanet@gmail.com' }])
    band2 = Band.create([{ name: 'Lords of Kitten', bio: 'We are really into metalcore, but what we mostly care about is kittens', email: 'lordsofkitten@gmail.com' }])
    band3 = Band.create([{ name: 'Google Bears', bio: 'We wear bear costumes at our shows', email: 'googlebears@gmail.com' }])

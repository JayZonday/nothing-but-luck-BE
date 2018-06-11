# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'Test', password:'Test')
user2 = User.create(username: 'JayZonday', password:"123")
post1 = Post.create(title: 'test', league:"NBA", body: 'testing posts', user_id: 1)

favorites = Favorite.create(user_id: 1, post_id: 1)

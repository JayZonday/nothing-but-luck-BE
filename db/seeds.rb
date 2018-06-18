# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(
  username: 'Test',
  password:"test",
  motto: "I Test Non-Stop!",
  email:"test@test.com",
  name:"Test Tester",
  favsport:"Testing",
  profurl:"https://www.robot-advance.com/EN/ori-maze-breaker-black-silverlit-1885.jpg",
  bgurl:"http://symphonyguildofwinterhaven.com/wp-content/uploads/Shamrocks.jpg")
user2 = User.create(
  username: 'JayZonday',
  password:"123",
  motto: "too legit to quit",
  email:"jmoloughney25@gmail.com",
  name:"Joe Moloughney",
  favsport:"Basketball",
  profurl: 'http://i66.tinypic.com/212fi8k.jpg',
  bgurl:"http://symphonyguildofwinterhaven.com/wp-content/uploads/Shamrocks.jpg")
user3 = User.create(
  username: 'LeGoat',
  password:"123",
  motto: "I Am King",
  email:"Lebron@lbj.com",
  name:"Lebron James",
  favsport:"Basketball",
  profurl: 'https://img.wennermedia.com/article-leads-horizontal/lebron-james-on-race-trump-retirement-cb1f9039-23c4-478a-83e6-2ded5158068c.jpg',
  bgurl:"https://i.cdn.turner.com/drp/nba/cavaliers/sites/default/files/cavs-generic-1718-758.jpg")
user4 = User.create(
  username: 'Jr Smith',
  password:"timeout",
  motto: "You Miss 100% of the shots you don't take",
  email:"jr@jr.com",
  name:"Earl Joseph",
  favsport:"Ball is Life",
  profurl: 'http://larrybrownsports.com/wp-content/uploads/2018/05/jr-smith-lebron-james.jpg',
  bgurl:"https://i.cdn.turner.com/drp/nba/cavaliers/sites/default/files/cavs-generic-1718-758.jpg")
user5 = User.create(
  username: 'KDtheCobra',
  password:"123",
  motto: "If you can't beat em... join em",
  email:"snake@snake.com",
  name:"Kevin 'The Great Snake' Durant",
  favsport:"Basketball",
  profurl: 'https://pbs.twimg.com/profile_images/886725130415726596/dhlW_OlO_400x400.jpg',
  bgurl:"https://i.ytimg.com/vi/0nRPIWieJyk/hqdefault.jpg")
user6 = User.create(
  username: 'TonyRomo9',
  password:"123",
  motto: "Thanks Dak.",
  email:"TonyRomes9@aol.com.com",
  name:"Tony Romo",
  favsport:"Football",
  profurl: 'https://s.hdnux.com/photos/57/57/22/12514462/7/920x920.jpg',
  bgurl:"https://res.cloudinary.com/nflclubs/image/private/t_editorial_landscape_8_desktop_mobile/f_auto/cowboys/jdlarmycsnolyfkdydh1.jpg")
post1 = Post.create(title: 'NBA - Test', league:"NBA", body: 'I wonder if this site will be able to handle these created posts and display them, so users can get the information they need to succeed in DFS', user_id: 1)

favorites = Favorite.create(user_id: 1, post_id: 1)

puts "Clearing the database for new seed"

models = [Booking, Spaceship, User]

models.each do |model|
  model.destroy_all
end

puts 'Creating 9 seed users...'


url = "http://pm1.narvii.com/6089/af1d3909a29f632858940fd017cdf5fc94221376_hq.jpg"
user1 = User.new(
  email: "darth@deathstar.gov",
  first_name: "Darth",
  last_name: "Vader",
  password: "123456"
  )
user1.save
user1.photo_url = url

url = "https://cdn-images-1.medium.com/max/1200/1*VgIV740H0nDmqwgOlYFw7w.jpeg"
user2 = User.new(
  email: "picard@enterprise.gov",
  first_name: "Cpt Jean-Luc",
  last_name: "Picard",
  password: "123456"
  )
user2.save
user2.photo_url = url

url = "http://i.dailymail.co.uk/i/pix/2016/03/05/20/31E63B1100000578-3478443-image-a-171_1457210994751.jpg"
user3 = User.new(
  email: "skywalker77@galaxyfarfaraway.com",
  first_name: "Luke",
  last_name: "Skywalker",
  password: "123456"
  )
user3.save
user3.photo_url = url

url = "http://www.writeups.org/wp-content/uploads/Starbuck-Kara-Thrace-Battlestar-Galactica-Sackhoff-b.jpg"
user4 = User.new(
  email: "starbuck@battlestargalactica.com",
  first_name: "Lt Kara",
  last_name: "Thrace",
  password: "123456"
  )
user4.save
user4.photo_url = url

url = "http://cdn.escapistmagazine.com/media/global/images/quizzes/cat_img/344.png"
user6 = User.new(
  email: "red@dwarf.space",
  first_name: "Arnold",
  last_name: "Rimmer",
  password: "123456"
  )
user6.save
user6.photo_url = url

url = "https://static.comicvine.com/uploads/square_small/1/15776/1008848-garibaldi.jpg"
user7 = User.new(
  email: "5@babylon.net",
  first_name: "Michael",
  last_name: "Garibaldi",
  password: "123456"
  )
user7.save
user7.photo_url = url

url = "http://www.classtools.net/_FAKEBOOK/images/a/alexey_ivanovich_gagarin.jpg"
user8 = User.new(
  email: "yuri@backintheussr.ru",
  first_name: "Yuri",
  last_name: "Gagarin",
  password: "123456"
  )
user8.save
user8.photo_url = url

url = "https://www.thefamouspeople.com/profiles/images/neil-armstrong-4.jpg"
user9 = User.new(
  email: "neil_in_space@moonwalker.net",
  first_name: "Neil",
  last_name: "Armstrong",
  password: "123456"
  )
user9.save
user9.photo_url = url

url = "https://img00.deviantart.net/7d88/i/2013/354/2/5/epic_boba_fett_by_heroforpain-d4klaju.jpg"
user10 = User.new(
  email: "boba@bountyhunterz.net",
  first_name: "Boba",
  last_name: "Fett",
  password: "123456"
  )
user10.save
user10.photo_url = url

puts 'Finished creating 9 users!'

puts 'Creating 6 spaceships...'

urls = [
  'http://starwarsblog.starwars.com/wp-content/uploads/sites/6/2015/12/BadFeeling-Episode-IV-Death-Star.jpg',
  'https://lumiere-a.akamaihd.net/v1/images/Death-Star-I-copy_36ad2500.jpeg?region=0\%\2C31\%\2C1600\%\2C800'
]
spaceship1 = Spaceship.new(
  user: User.first,
  name: "Death Star",
  address: "Ahornsgade 15, Copenhagen N, Denmark",
  price: 1000,
  description: "This is the station wagon of spaceships. Plenty of room for the entire family",
  speed: "Slow",
  weaponry: "Superlaser/Ultimate Weapon"
  )
spaceship1.save
spaceship1.photo_urls = urls

urls = [
  'https://lumiere-a.akamaihd.net/v1/images/X-Wing-Fighter_47c7c342.jpeg?region=0\%\2C1\%\2C1536\%\2C864&width=768',
  'https://vignette.wikia.nocookie.net/starwars/images/f/ff/X-wing_SWGTCG.jpg/revision/latest?cb=20090319165201'
]
spaceship2 = Spaceship.new(
  user: User.order("RANDOM()").first,
  name: "X-Wing Starfighter",
  address: "Kongensgade, Odense, Denmark",
  price: 200,
  description: "This is the Porsche of spaceships. A history of class and elegance but still fast as f....",
  speed: "1,050 km/h",
  weaponry: "Laser"
  )
spaceship2.save
spaceship2.photo_urls = urls

urls = [
  'https://vaneesesmart.files.wordpress.com/2012/03/spaceballseagle5_0021_layer1.jpg',
  'https://vaneesesmart.files.wordpress.com/2012/03/spaceballs3134.jpg'
]
spaceship3 = Spaceship.new(
  user: User.order("RANDOM()").first,
  name: "Spaceballs Winnebago",
  address: "Allerød, Denmark",
  price: 100,
  description: "This is the for the easy going spaceship enthusiast. For when you don't care where you are going, because it is all about the journey",
  speed: "40 km/h",
  weaponry: "Diesel smoke"
  )
spaceship3.save
spaceship3.photo_urls = urls

urls = [
  'https://c1.staticflickr.com/5/4134/4911288751_cda7b9a3ca_b.jpg',
  'https://medias.spotern.com/spots/w640/12838.jpg'
]
spaceship4 = Spaceship.new(
  user: User.order("RANDOM()").first,
  name: "Space Station V",
  address: "Hollywood, California, USA",
  price: 700,
  description: "This is the spaceship for the interior designminded users. If you care more about going round in circles and sitting comfortably with a great view of Planet Earth",
  speed: "0 km/h",
  weaponry: "None"
  )
spaceship4.save
spaceship4.photo_urls = urls

urls = [
  'https://www.f1telescopes.co.uk/wp-content/uploads/2014/12/11.jpg',
  'http://news.bbcimg.co.uk/media/images/46059000/jpg/_46059312_saturnvlaunch_nasa_466.jpg'
]
spaceship5 = Spaceship.new(
  user: User.order("RANDOM()").first,
  name: "Apollo Saturn V",
  address: "Cape Canaveral, Florida, USA",
  price: 400,
  description: "This is tried and tested favorite will get the job done on time. For when you want to get there and secure the best spot for your outer-space picnic before your rival gets there",
  speed: "2 755.55456 m/s",
  weaponry: "Buzz"
  )
spaceship5.save
spaceship5.photo_urls = urls

urls = [
  'http://www.fotothing.com/photos/a71/a7129f3edc3022dd1d75e544d3a38cf7.jpg',
  'http://www.davidsissonmodels.co.uk/OTHERCRAFT/Starbug6a.jpg'
]
spaceship6 = Spaceship.new(
  user: User.order("RANDOM()").first,
  name: "Starbug 1",
  address: "Valby, Copenhagen, Denmark",
  price: 100,
  description: "Crappy green spaceship. Totally unreliable and unclean. Price can negotiated",
  speed: "42 km/h",
  weaponry: "Nope"
  )
spaceship6.save
spaceship6.photo_urls = urls

puts 'Finished creating 6 spaceships!'

puts 'Creating 6 bookings...'

booking1 = Booking.new(
  spaceship: Spaceship.first,
  user: User.last,
  start_date: Date.today,
  end_date: Date.tomorrow,
  status: true,
  total_price: 2000
  )
booking1.save

booking2 = Booking.new(
  spaceship: Spaceship.order("RANDOM()").first,
  user: User.order("RANDOM()").first,
  start_date: Date.today + 1.week,
  end_date: Date.today + 2.months,
  status: true
  )
booking2.save

booking3 = Booking.new(
  spaceship: Spaceship.order("RANDOM()").first,
  user: User.order("RANDOM()").first,
  start_date: Date.today + 4.weeks,
  end_date: Date.today + 2.months,
  status: true
  )
booking3.save

booking4 = Booking.new(
  spaceship: Spaceship.order("RANDOM()").first,
  user: User.order("RANDOM()").first,
  start_date: Date.today + 2.weeks,
  end_date: Date.today + 3.weeks,
  status: true
  )
booking4.save

booking5 = Booking.new(
  spaceship: Spaceship.order("RANDOM()").first,
  user: User.order("RANDOM()").first,
  start_date: Date.today + 2.weeks,
  end_date: Date.today + 2.months,
  status: true
  )
booking5.save

booking6 = Booking.new(
  spaceship: Spaceship.order("RANDOM()").first,
  user: User.order("RANDOM()").first,
  start_date: Date.today + 3.weeks,
  end_date: Date.today + 2.months,
  status: true
  )
booking6.save

puts 'Finished creating 6 bookings!'
puts 'Seeding successful!'
puts "---- Delete all items in database ----"
Barbecue.destroy_all
Rental.destroy_all
User.destroy_all

puts "---- Seed model User (20 instances) ----"


micka = User.create(
 {
  email: 'mika@gmail.com',
  password: 'azerty'
 }
 )


 pierre = User.create(
 {
   email: 'pierre@gmail.com',
  password: 'azerty'
 }
 )

 arthur = User.create(
 {
  email: "arthur@gmail.com",
  password: "azerty"
 }
 )

werner= User.create(
  {
  email: "werner@gmail.com",
  password: "azerty"
 }
 )


p User.all
puts "---- Seed model User 'ok' ---"



barbecue_mick1 = Barbecue.create(
  {
    name:         'Barbecue3000',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        330,
    location:     'Lille',
    user:         micka
  }
)

barbecue_mick2 = Barbecue.create(
  {
    name:         'BarbecueQuiCrame',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'charbon',
    price:        500,
    location:     'Lens',
    user:         micka
  }
)

barbecue_pierre1 = Barbecue.create(
  {
    name:         'Barbecue Super',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        500,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_pierre2 = Barbecue.create(
  {
    name:         'Barbecue à la con',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        100,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_arthur1 = Barbecue.create(
  {
    name:         'Le Barbeuc',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        100,
    location:     'Lille',
    user:         arthur
  }
)

barbecue_arthur2 = Barbecue.create(
  {
    name:         'Le Barbeuc',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        270,
    location:     'Seclin',
    user:         arthur
  }
)

barbecue_werner1 = Barbecue.create(
  {
    name:         'SaucisseBarbeux',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        790,
    location:     'Lille',
    user:         werner
  }
)

barbecue_werner2 = Barbecue.create(
  {
    name:         'Michelin Barbecue',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'autre',
    price:        1200,
    location:     'Lille',
    user:         werner
  }
)











#   10.times  { count =+ 1
#               rentals <<
#               {
#                 start_date:       Time.now,
#                 end_date:         Faker::Date.between(from: 150.days.ago, to: Date.today),
#                 barbecue_id:      count,
#                 user_id:          users_id_rental[count]
#               }


# puts "---- Seed 'ok' ----"

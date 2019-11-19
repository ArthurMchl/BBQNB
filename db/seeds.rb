puts '---- Delete all items in database ----'
Barbecue.destroy_all
Rental.destroy_all
User.destroy_all

puts '---- Seed model User (4 instances) ----'


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
  email: 'arthur@gmail.com',
  password: 'azerty'
 }
 )

werner= User.create(
  {
  email: 'werner@gmail.com',
  password: 'azerty'
  }
 )

puts '---- Seed model User "ok" ---'

puts '---- Seed model Barbecue (8 instances) ----'

barbecue_mick_un = Barbecue.create(
  {
    name:         'Barbecue3000',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        330,
    location:     'Lille',
    user:         micka
  }
)

barbecue_mick_deux = Barbecue.create(
  {
    name:         'BarbecueQuiCrame',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'charbon',
    price:        500,
    location:     'Lens',
    user:         micka
  }
)

barbecue_pierre_un = Barbecue.create(
  {
    name:         'Barbecue Super',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        500,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_pierre_deux = Barbecue.create(
  {
    name:         'Barbecue à la con',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'gaz',
    price:        100,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_arthur_un = Barbecue.create(
  {
    name:         'Le Barbeuc',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        100,
    location:     'Lille',
    user:         arthur
  }
)

barbecue_arthur_deux = Barbecue.create(
  {
    name:         'Le Barbeuc',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        270,
    location:     'Seclin',
    user:         arthur
  }
)

barbecue_werner_un = Barbecue.create(
  {
    name:         'SaucisseBarbeux',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'electrique',
    price:        790,
    location:     'Lille',
    user:         werner
  }
)

barbecue_werner_deux = Barbecue.create(
  {
    name:         'Michelin Barbecue',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'autre',
    price:        1200,
    location:     'Lille',
    user:         werner
  }
)

puts '---- Seed model Barbecue "ok" ---'

puts '---- Seed model Rental (8 instances) ----'

rental_mv_pr1 = Rental.create(
  {
    start_date:       Time.new(2017, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_mick_un.id,
    user_id:          pierre.id
  }
)

rental_mv_pr2 = Rental.create(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_pierre_un.id,
    user_id:          micka.id
  }
)

rental_art_wnr1 = Rental.create(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 12, 02, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_arthur_un.id,
    user_id:          werner.id
  }
)

rental_art_wnr2 = Rental.create(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 05, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_werner_un.id,
    user_id:          arthur.id
  }
)

rental_mv_art1 = Rental.create(
  {
    start_date:       Time.new(2019, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_mick_deux.id,
    user_id:          arthur.id
  }
)

rental_mv_art2 = Rental.create(
  {
    start_date:       Time.now,
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_arthur_deux.id,
    user_id:          micka.id
  }
)

rental_wnr_pr1 = Rental.create(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_pierre_deux.id,
    user_id:          werner.id
  }
)

rental_wnr_pr2 = Rental.create(
  {
    start_date:       Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2021, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_werner_deux.id,
    user_id:          pierre.id
  }
)

puts '---- Seed model Rental "ok" ---'

puts '---- Delete all items in database ----'
Barbecue.destroy_all
Rental.destroy_all
User.destroy_all

puts '---- Seed model User (4 instances) ----'


micka = User.create!(
 {
  email: 'mika@gmail.com',
  password: 'azerty'
 }
 )


 pierre = User.create!(
 {
   email: 'pierre@gmail.com',
  password: 'azerty'
 }
 )

 arthur = User.create!(
 {
  email: 'arthur@gmail.com',
  password: 'azerty'
 }
 )

werner= User.create!(
  {
  email: 'werner@gmail.com',
  password: 'azerty'
  }
 )

puts '---- Seed model User "ok" ---'

puts '---- Seed model Barbecue (8 instances) ----'

barbecue_mick_un = Barbecue.create!(
  {
    name:         'Barbecue super 3000++',
    description:  "Ce pack est composé d'un brasero sur trois pieds en acier ø 59 cm, d'une grille de cuisson de ø 60 cm (idéale pour vos
                  cuissons de poissons, de légumes) et d'un kit marshmallow qui fera le bonheur des plus jeunes, à condition qu'un adulte soit présent !
                  Attention : Le brasero ne doit pas être posé sur une terrasse en bois. La chaleur qui est générée peut abîmer le sol.",
    category:     'Gaz',
    price:        330,
    location:     'Lille',
    user:         micka,
  }
)

barbecue_mick_deux = Barbecue.create!(
  {
    name:         'Weber',
    description:  "Stand 4 pieds avec système de démontage facile, idéal pour les espaces types balcon,
                  terrasse
                  Barbecue électrique avec grille de cuisson haute résistance en fonte d'acier émaillée,
                  bac de récupération des graisses, molette de réglage de la température, larges poignées
                  pour une manipulation aisée, cordon longeur : 1,80 m",
    category:     'Charbon',
    price:        500,
    location:     'Lens',
    user:         micka,
  }
)

barbecue_pierre_un = Barbecue.create!(
  {
    name:         'Esprit Barbecue',
    description:  "La locomotive Joe's Wild West est équipé de deux chambres qui permettent de cuir ou
                  fumer vos aliments à des températures comprises entre 90 et 130°C ! Une fabrication à la
                  main est donc, parfaitement soignée. L'acier qui constitue la locomotive a une épaisseur
                  de 6,35 mm, ce qui lui garantie une durée de vie supérieur à la moyenne d'un barbecue lambda.",
    category:     'Gaz',
    price:        100,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_pierre_deux = Barbecue.create!(
  {
    name:         'Barbecook',
    description:  "Le Royal 320 noir est un barbecue à Gaz qui vous offre toute une multitude de
                  possibilités en matière de cuisson, mais également un confort important pendant la
                  préparation de vos repas ! Un incroyable mélange de design et de praticité qui fera
                  le bonheur des amateurs de barbecue ! ",
    category:     'Gaz',
    price:        100,
    location:     'Lille',
    user:         pierre
  }
)

barbecue_arthur_un = Barbecue.create!(
  {
    name:         'Somatic barbecues',
    description:  "Barbecue à Gaz Broil King Impérial XL, pour 18 à 20 personnes, grilles de cuisson en
                  fonte et inox, 6 brûleurs, un brûleur arrière pour la rôtissoire et un réchaud latéral.
                  Ce barbecue est l'un des plus complet et polyvalent jamais créé. ",
    category:     'Electrique',
    price:        100,
    location:     'Lille',
    user:         arthur
  }
)

barbecue_arthur_deux = Barbecue.create!(
  {
    name:         'Dixneuf',

    description:  'blalalllvldflfdslzflfelsf',
    category:     'Electrique',
    price:        270,
    location:     'Seclin',
    user:         arthur
  }
)

barbecue_werner_un = Barbecue.create!(
  {
    name:         'Grill`up',

    description:  'blalalllvldflfdslzflfelsf',
    category:     'Electrique',
    price:        790,
    location:     'Lille',
    user:         werner
  }
)

barbecue_werner_deux = Barbecue.create!(
  {
    name:         'Grill O`Bois',
    description:  'blalalllvldflfdslzflfelsf',
    category:     'Autre',
    price:        1200,
    location:     'Lille',
    user:         werner
  }
)

puts '---- Seed model Barbecue "ok" ---'

puts '---- Seed model Rental (8 instances) ----'

rental_mv_pr1 = Rental.create!(
  {
    start_date:       Time.new(2017, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_mick_un.id,
    user_id:          pierre.id
  }
)

rental_mv_pr2 = Rental.create!(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_pierre_un.id,
    user_id:          micka.id
  }
)

rental_art_wnr1 = Rental.create!(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 12, 02, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_arthur_un.id,
    user_id:          werner.id
  }
)

rental_art_wnr2 = Rental.create!(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 05, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_werner_un.id,
    user_id:          arthur.id
  }
)

rental_mv_art1 = Rental.create!(
  {
    start_date:       Time.new(2019, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_mick_deux.id,
    user_id:          arthur.id
  }
)

rental_mv_art2 = Rental.create!(
  {
    start_date:       Time.now,
    end_date:         Time.new(2019, 12, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_arthur_deux.id,
    user_id:          micka.id
  }
)

rental_wnr_pr1 = Rental.create!(
  {
    start_date:       Time.now,
    end_date:         Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_pierre_deux.id,
    user_id:          werner.id
  }
)

rental_wnr_pr2 = Rental.create!(
  {
    start_date:       Time.new(2020, 01, 31, 2, 2, 2, "+02:00"),
    end_date:         Time.new(2021, 01, 31, 2, 2, 2, "+02:00"),
    barbecue_id:      barbecue_werner_deux.id,
    user_id:          pierre.id
  }
)

puts '---- Seed model Rental "ok" ---'

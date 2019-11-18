
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Barbecue.destroy_all
Rental.destroy_all
User.destroy_all

user_attributes = [ {
                      email: "#{Faker::Name.last_name} #{['@free.fr',
                                                          '@numericable.fr',
                                                          '@aol.fr','@orange.fr'].sample}"











}]








barbecue_attributes = [ {
                          user:             u1,
                          name:             Faker::Name.name,
                          description:      Faker::Lorem.paragraph,
                          category:         ['charbon', 'gaz', 'électrique'].sample,
                          price:            ((100...600).to_a).sample,
                          location:         Faker::Address.city
                        }
]

Barbecue.create!(barbecue_attributes)

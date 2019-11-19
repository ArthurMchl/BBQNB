users_id_rental = []
users_id_barbecue = []
users = []
barbecues = []
rentals = []

count = 0

def id_users_random_barbecue
  (1..20).to_a.sample(10)
end

def id_users_random_rental(array_users_id_barbecue)
  array_id_selected = (1..20).to_a
  array_users_id_barbecue.each do |num|
    array_id_selected.delete_if { |id_delete| id_delete == num }
  end
end

users_id_barbecue = id_users_random_barbecue
users_id_rental = id_users_random_rental(users_id_barbecue)


puts "---- Delete all items in database ----"
Barbecue.destroy_all
Rental.destroy_all
User.destroy_all

def createSeedUsers(users)
puts "---- Seed model User (20 instances) ----"
  users_attributes = []
  prefixes_mail = ['@free.fr', '@numericable.fr', '@aol.fr','@orange.fr']
  10.times  { users << {  email: "#{Faker::Name.last_name}.#{Faker::Name.first_name}#{prefixes_mail.sample}",
                          encrypted_password: "a652a3922a113s8" } }
  User.create!(users_attributes)
end

def createSeedBarbecues (users_id_barbecue, barbecues)
  puts "---- Seed model Barbecue (10 instances) ----"
  barbecues_attributes = []
  10.times  { count =+ 1
              barbecues <<
              {
                name:             Faker::Name.name,
                description:      Faker::Lorem.paragraph,
                category:         ['charbon', 'gaz', 'électrique'].sample,
                price:            ((100...600).to_a).sample,
                location:         Faker::Address.city,
                user_id:          users_id_barbecue[count]
              }
            }
  Barbecue.create!(barbecues_attributes)
  count = 0
end

def createSeedrentals(users_id_rental, rentals)
  puts "---- Seed model Rentals (10 instances) ----"
  rentals_attributes = []
  10.times  { count =+ 1
              rentals <<
              {
                start_date:       Time.now,
                end_date:         Faker::Date.between(from: 150.days.ago, to: Date.today),
                barbecue_id:      count,
                user_id:          users_id_rental[count]
              }            
            }
  Rental.create!(rentals_attributes)
count = 0
end

createSeedUsers(users)
createSeedBarbecues(users_id_barbecue, barbecues)
createSeedrentals(users_id_rental,rentals )

puts "---- Seed 'ok' ----"

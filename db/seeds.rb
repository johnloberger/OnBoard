require 'faker'

CustomerUser.destroy_all
Pet.destroy_all
KennelOwnerUser.destroy_all
Kennel.destroy_all
# Den.destroy_all
# Visit.destroy_all


10.times do 
  CustomerUser.create(name: Faker::Name.name, age: rand(15..55), email_address: Faker::Internet.email, password: "ruby")
  KennelOwnerUser.create(name: Faker::Name.name, age: rand(15..55), email_address: Faker::Internet.email, password: "ruby")
  Pet.create(name: Faker::Creature::Dog.name, age: rand(1..10), animal_type: 'dog', breed: Faker::Creature::Dog.breed, customer_user_id: CustomerUser.last.id)
  Kennel.create(name: Faker::Company.name , address: Faker::Address.street_address, rate:  rand(40..80), capacity: rand(10..100), user_id: KennelOwnerUser.last.id)
  
  # Visit.create(pet_id: Pet.last.id, finished: false, days: rand(1..10), kennel_id: Kennel.last.id)


end



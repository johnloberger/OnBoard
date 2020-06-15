require 'faker'

User.destroy_all
Pet.destroy_all
KennelOwner.destroy_all
Kennel.destroy_all
Den.destroy_all
Visit.destroy_all


10.times do 
  User.create(name: Faker::Name.name, age: rand(15..55), email_address: Faker::Internet.email)
  Pet.create(name: Faker::Creature::Dog.name, age: rand(1..10), animal_type: 'dog', breed: Faker::Creature::Dog.breed, user_id: User.last.id)
  KennelOwner.create(name: Faker::Name.name, age: rand(15..55), email_address: Faker::Internet.email)
  Kennel.create(name: Faker::Company.name , address: Faker::Address.street_address, rate:  rand(40..80), capacity: rand(10..100), kennel_owner_id: KennelOwner.last.id)
  
  d = Den.create(kennel_id: Kennel.last.id)
  v = Visit.create(pet_id: Pet.last.id, finished: false, days: rand(1..10), den_id: Den.last.id)
  d.visit_id = v.id
  d.save
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pet.destroy_all

user_a = User.create(name: 'John', age: 23, email_address: 'john@gmail.com')

dog_a = Pet.create(name: 'Fluffy', age: 5, animal_type: 'Dog', breed: 'Lab', user_id: user_a.id)
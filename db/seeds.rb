# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:"Admin", email:"admin@example.com", password:"password", admin: true)
50.times do
  price = '%.2f' % rand(1.00 .. 99.99)
  Item.create(name: Faker::Commerce.product_name,
              brand: Faker::Company.name,
              price: price.to_f,
              pic: Faker::Placeholdit.image)
end
SampleBox.create(name:'first', price: 99.99)
Cart.create(user_id: 1)

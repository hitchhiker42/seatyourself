# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Restaurant.create(name: 'Jimmys', address: '100 College St.', price_range: '$$', capacity: 30)
r2 = Restaurant.create(name: 'Ayshas', address: 'super far away St.', price_range: '$$$', capacity: 20)

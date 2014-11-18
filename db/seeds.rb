<<<<<<< HEAD
Category.create!( id: 1, name: 'metals')
Category.create!( id: 2, name: 'gems')
Product.create!(
  name: "Adamantium",
  description: "The hardest metal known to man, attached to Wolverine's bones!",
  shine: 4,
  price: 1399.99,
  rarity: 10,
  color: '#CCC',
  faces: 2,
  category_id: "1" )
Product.create!(
  name: "Platinum",
  description: "It's still not as cool as Adamantium",
  shine: 5,
  price: 999.99,
  rarity: 8,
  color: '#CCC',
  faces: 2,
  category_id: "1" )

=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
>>>>>>> 3a3c33da21b8b6bf5c1df80eb4605b466cd00707

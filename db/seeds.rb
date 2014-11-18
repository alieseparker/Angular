
Category.create!( id: 1, name: 'metals')
Category.create!( id: 2, name: 'gems')

Product.create!(
  name: "Azurite",
  description: "Some gems have hidden qualities beyond their luster, beyond their shine... Azurite is one of those gems.",
  shine: 8,
  price: 110.50,
  rarity: 7,
  color: "#CCC",
  faces: 14,
  category_id: 2,
)

Product.create!(

  name: "Bloodstone",
  description: "Origin of the Bloodstone is unknown, hence its low value. It has a very high shine and 12 sides, however.",
  shine: 9,
  price: 22.90,
  rarity: 6,
  color: "#EEE",
  faces: 11,
  category_id: 2,
)

Product.create!(
  name: "Zircon",
  description: "Zircon is our most coveted and sought after gem. You will pay much to be the proud owner of this gorgeous and high shine gem.",
  shine: 70,
  price: 1100,
  rarity: 2,
  color: "#000",
  faces: 6,
  category_id: 2,
)

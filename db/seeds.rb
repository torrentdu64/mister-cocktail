# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Ingredient.destroy_all

mint = Ingredient.create(name: "Mint")
ice = Ingredient.create(name: "Ice")
sugau = Ingredient.create(name: "Sugar")
rhum = Ingredient.create(name: "Rhum")
soda_water = Ingredient.create(name: "Soda water")
lime = Ingredient.create(name: "Lime")

Cocktail.destroy_all

Cocktail.create(name: "Mojito")

Dose.create(cocktail: mojito, ingredient: mint, description: "3 leaves")
Dose.create(cocktail: mojito, ingredient: ice, description: "a spoon, crushed")
Dose.create(cocktail: mojito, ingredient: rhum, description: "just a hint")
Dose.create(cocktail: mojito, ingredient: lime, description: "10 cl")
Dose.create(cocktail: mojito, ingredient: soda_water, description: "to the rim")


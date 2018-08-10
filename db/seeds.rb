# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning Doses database...'
Dose.destroy_all
puts 'Creating Doses...'


puts 'Cleaning Ingredient database...'
Ingredient.destroy_all

puts 'Creating ingredients...'
Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "Light Rum")
Ingredient.create!(name: "Strawberry schnapps")
Ingredient.create!(name: "Apricot brandy")

puts 'Cleaning Cocktails database...'
Cocktail.destroy_all
puts 'Creating Cocktails...'

cocktail = Cocktail.new
cocktail.name = "Cockti 101"
cocktail.remote_photo_url = 'https://res.cloudinary.com/diflsxpwh/image/upload/v1533882435/525x525_roman-cosmo-martini-cocktail.jpg'
cocktail.save!

cocktail = Cocktail.new
cocktail.name = "Cockti 102"
cocktail.remote_photo_url = 'https://res.cloudinary.com/diflsxpwh/image/upload/v1533882460/bigstock-142897766.jpg'
cocktail.save!

cocktail = Cocktail.new
cocktail.name = "Cockti 103"
cocktail.remote_photo_url = 'https://res.cloudinary.com/diflsxpwh/image/upload/v1533882470/copper-king-6_2000x1500.webp'
cocktail.save!

cocktail = Cocktail.new
cocktail.name = "Cockti 104"
cocktail.remote_photo_url = 'https://res.cloudinary.com/diflsxpwh/image/upload/v1533882471/Percy-on-the-Beach-Cocktail-5-600x800.jpg'
cocktail.save!

cocktail = Cocktail.new
cocktail.name = "Cockti 105"
cocktail.remote_photo_url = 'https://res.cloudinary.com/diflsxpwh/image/upload/v1533882471/hub_classic_cocktail_daiquiri.jpg'
cocktail.save!


ing  = Ingredient.all
c = Cocktail.all

Dose.create!(description: "1 ml", cocktail_id: c[0].id, ingredient_id: ing[0].id)
Dose.create!(description: "2 ml", cocktail_id: c[1].id, ingredient_id: ing[1].id)
Dose.create!(description: "3 ml", cocktail_id: c[1].id, ingredient_id: ing[3].id)
Dose.create!(description: "4 ml", cocktail_id: c[2].id, ingredient_id: ing[4].id)
puts 'Finished!'


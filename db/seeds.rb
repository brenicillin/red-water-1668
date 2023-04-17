# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@brandon = Chef.create!(name: "Brandon Johnson")
@guy = Chef.create!(name: "Guy Fieri")

@guy_burger = @guy.dishes.create!(name: "Guy Burger", description: "Burger with Guy's secret sauce")
@buffalo_mac = @brandon.dishes.create!(name: "Buffalo Mac and Cheese", description: "Chicken Breast tossed in Buffalo Sauce, smothered in cheese with macaroni noodles")
@chicken_sando = @guy.dishes.create!(name: "Chicken Sandwich", description: "Chicken Breast with Guy's secret sauce")
@burger_mac = @brandon.dishes.create!(name: "Cheeseburger Mac and Cheese", description: "Ground beef and macaroni noodles smothered in cheese")

@beef = Ingredient.create!(name: "Ground Beef", calories: 500)
@bun = Ingredient.create!(name: "Bun", calories: 200)
@guy_sauce = Ingredient.create!(name: "Guy Sauce", calories: 100)
@tomato = Ingredient.create!(name: "Tomato", calories: 50)
@lettuce = Ingredient.create!(name: "Lettuce", calories: 50)

@chicken = Ingredient.create!(name: "Chicken Breast", calories: 200)
@mac = Ingredient.create!(name: "Macaroni Noodles", calories: 200)
@cheese = Ingredient.create!(name: "Cheese", calories: 500)
@buffalo = Ingredient.create!(name: "Buffalo Sauce", calories: 100)
@sriracha = Ingredient.create!(name: "Sriracha", calories: 50)

@guy_burger.ingredients << @bun
@guy_burger.ingredients << @tomato
@guy_burger.ingredients << @beef
@guy_burger.ingredients << @lettuce
@guy_burger.ingredients << @guy_sauce

@chicken_sando.ingredients << @chicken
@chicken_sando.ingredients << @bun
@chicken_sando.ingredients << @guy_sauce
@chicken_sando.ingredients << @lettuce

@buffalo_mac.ingredients << @chicken
@buffalo_mac.ingredients << @buffalo
@buffalo_mac.ingredients << @mac
@buffalo_mac.ingredients << @cheese

@burger_mac.ingredients << @beef
@burger_mac.ingredients << @mac
@burger_mac.ingredients << @cheese
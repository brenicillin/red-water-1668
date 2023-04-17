def test_data
  @brandon = Chef.create!(name: "Brandon Johnson")
  @buffalo_mac = @brandon.dishes.create!(name: "Buffalo Mac and Cheese", description: "Chicken Breast tossed in Buffalo Sauce, smothered in cheese with macaroni noodles")
  @chicken = Ingredient.create!(name: "Chicken Breast", calories: 200)
  @mac = Ingredient.create!(name: "Macaroni Noodles", calories: 200)
  @cheese = Ingredient.create!(name: "Cheese", calories: 500)
  @buffalo = Ingredient.create!(name: "Buffalo Sauce", calories: 100)
  @sriracha = Ingredient.create!(name: "Sriracha", calories: 50)
  @buffalo_mac.ingredients << @chicken
  @buffalo_mac.ingredients << @buffalo
  @buffalo_mac.ingredients << @mac
  @buffalo_mac.ingredients << @cheese
end
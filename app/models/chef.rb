class Chef < ApplicationRecord
  validates_presence_of :name
  has_many :dishes
  has_many :ingredients, through: :dishes

  def unique_ingredients
    ingredients.distinct
  end

  def top_3_ingredients
    ingredients.select("ingredients.*, count(ingredients.id) as ingredient_count")
    .group(:id)
    .order("ingredient_count DESC")
    .limit(3)
  end
end
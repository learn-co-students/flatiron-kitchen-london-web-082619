class Recipe < ApplicationRecord
  has_many :ingredients_recipes
  has_many :ingredients, through: :ingredients_recipes

  validates :name, presence: true

  def ingredients=(ingredient_ids)
    ingredient_ids.each do |ingredient_id|
      ingredient = Ingredient.find(ingredient_id)
      self.ingredients << ingredient
    end
  end

  # def ingredients
  #   self.ingredients
  # end
end

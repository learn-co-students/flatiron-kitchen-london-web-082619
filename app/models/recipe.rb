class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    validates :name, presence: true

    # def ingredient_ids=(ingredient_ids)
    #     ingredient_ids.each do |id|
    #         if id.empty?
    #         ing = Ingredient.find(id)
    #         self.ingredients << ing
    #         else next
    #     end
    # end
end

class RecipesController < ApplicationController
  before_action :set_recipe!, only: [:show, :edit, :update]

  def index
    @recipes = Recipe.all
  end

  def show
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def edit
    @ingredients = Ingredient.all
  end

  def create
    byebug
    recipe = Recipe.new(recipe_params)
    if recipe.valid?
      recipe.save
      redirect_to recipe_path(recipe)
    else
    render :new
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def delete
  end

  private

  def set_recipe!
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

end

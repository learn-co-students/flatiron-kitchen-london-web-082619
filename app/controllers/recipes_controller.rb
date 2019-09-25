class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipe_params)

    if @recipe.valid?
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def show
    @recipe = find_recipe
    @ingredients = @recipe.ingredients
  end

  def edit
    @recipe = find_recipe
    @ingredients = Ingredient.all
  end

  def update
    @recipe = find_recipe
    @recipe.update(recipe_params)

    if @recipe.valid?
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
    @recipe = find_recipe
    @recipe.destroy

    redirect_to recipes_path
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name, ingredient_ids: [])
  end

  def find_recipe
    Recipe.find(params[:id])
  end
end

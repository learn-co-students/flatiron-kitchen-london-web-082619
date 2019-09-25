class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all
  end
  
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)

    if @ingredient.valid?
      redirect_to ingredient_path(@ingredient)
    else
      render :new
    end
  end

  def show
    @ingredient = find_ingredient
  end

  def edit
    @ingredient = find_ingredient
  end

  def update
    @ingredient = find_ingredient
    @ingredient.update(ingredient_params)

    if @ingredient.valid?
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  def destroy
    @ingredient = find_ingredient
    @ingredient.destroy

    redirect_to ingredients_path
  end


  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

  def find_ingredient
    Ingredient.find(params[:id])
  end
end

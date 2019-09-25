class IngredientsController < ApplicationController

  before_action :set_ingredient!, only: [:show, :edit, :update]

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
    @ingredient = Ingredient.new(ing_params)
    if @ingredient.valid?
      @ingredient.save
      redirect_to ingredient_path(@ingredient)
    else
    render :new
    end
  end

  def update
    if @ingredient.update(ing_params)
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  def delete
  end

  private

  def set_ingredient!
    @ingredient = Ingredient.find(params[:id])
  end

  def ing_params
    params.require(:ingredient).permit(:name)
  end

end

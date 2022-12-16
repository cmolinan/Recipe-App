class RecipesFoodsController < ApplicationController
  def new
    @foods = Food.all
    @recipe_food = RecipeFood.new
  end

  def create
    recipe_food = RecipeFood.new(recipe_food_params)
    recipe_food.recipe_id = params[:recipe_id]

    return unless recipe_food.save

    redirect_to recipe_path(params[:recipe_id])
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id]).destroy
    redirect_to recipe_path(params[:recipe_id])
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity, :food_id)
  end
end

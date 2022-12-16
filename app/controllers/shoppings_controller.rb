class ShoppingsController < ApplicationController
  def index
    @recipe_food = RecipeFood.includes(:food).where(recipe_id: params[:recipe_id])
  end
end

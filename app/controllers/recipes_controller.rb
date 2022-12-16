class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user).where(user_id: current_user.id)
    # @user = User.find_by(id: current_user.id)
  end

  def show
    @recipe = Recipe.includes(:user).find(params[:id])
    # @user = User.find_by(id: current_user.id)
    @recipe_food = RecipeFood.includes(:food).where(recipe_id: params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def public
    @recipe = Recipe.where(public: true)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    if @recipe.save
      flash[:notice] = 'Recipe was saved successfully.'
      redirect_to recipes_path
    else
      flash.now[:alert] = 'There was an error creating the recipe. Please try again.'
      render :new
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      flash[:notice] = 'Recipe was deleted successfully.'
    else
      flash.now[:alert] = 'There was an error deleting the recipe.'
    end
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cooking_time, :preparation_time, :description, :public)
  end
end

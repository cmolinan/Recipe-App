Rails.application.routes.draw do
  devise_for :users 
  # resources :users

  devise_scope :recipe do
    get '/recipes/:recipe_id/recipe_foods/new' => 'recipes_foods#new'
    get '/recipes/:recipe_id/recipe_foods/:id' => 'recipes_foods#destroy'
  end

    resources :foods, except: [:edit, :update]

    resources :recipes, only: [:index, :show, :new, :create, :destroy] do
      resources :shoppings, only: [:index]
      resources :recipe_foods, only: [:new, :create, :destroy]
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/public_recipes', to: 'recipes#public'
  get '/general_shopping_list', to: 'foods#general'
  # Defines the root path route ("/")
  root "recipes#index"
end

Rails.application.routes.draw do
  devise_for :users 
  # resources :users

  devise_scope :recipe do
    get '/recipes/:recipe_id/recipes_foods/new' => 'recipes_foods#new'
    get '/recipes/:recipe_id/recipes_foods/:id' => 'recipes_foods#destroy'
  end

    resources :foods, except: [:edit, :update]

    resources :recipes, only: [:index, :show, :new, :create, :destroy] do
      resources :shoppings, only: [:index]
      resources :recipes_foods, only: [:new, :create, :destroy]
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
end

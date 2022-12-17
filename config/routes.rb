Rails.application.routes.draw do
  devise_for :users 

  resources :foods, except: [:edit, :update]

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :shoppings, only: [:index]
    resources :recipes_foods, only: [:new, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/public_recipes', to: 'recipes#public'
  get '/general_shopping_list', to: 'foods#general'
  # Defines the root path route ("/")
  root "recipes#index"
end

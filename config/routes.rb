Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  # get 'shoppings/index'
  # get 'publics/index'
  # get 'users/index' => 'users#index'
  # get 'user/show' => 'users#show'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show] do

  
    # resources :recipes, only: [:index, :show, :new, :create, :destroy] do 
    #   resources :recipe_foods, only: [:new, :create, :destroy]      
    # end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
end

# devise_scope :user do
#   get "/some/route" => "some_devise_controller"
# end
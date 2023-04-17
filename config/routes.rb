Rails.application.routes.draw do

  resources :dishes, only: [:show]
  post '/dishes/:id', to: 'dishes#add_ingredient'

  resources :chefs, only: [:show] do
    resources :ingredients, only: [:index]
  end

end

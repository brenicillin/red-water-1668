Rails.application.routes.draw do

  resources :dishes, only: [:show]
  post '/dishes/:id', to: 'dishes#add_ingredient'

end

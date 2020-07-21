Rails.application.routes.draw do
  root 'wikis#index'
  resources :wikis
  post '/search', to: 'search#index'
  get '/random', to: 'random#random'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

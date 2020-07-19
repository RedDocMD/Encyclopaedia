Rails.application.routes.draw do
  root 'wiki#index'
  resources :wiki
  post '/search', to: 'search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

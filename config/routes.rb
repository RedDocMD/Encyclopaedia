Rails.application.routes.draw do
  get 'wiki/', to: 'wiki#index'
  root 'wiki#index'
  get 'wiki/:title', to: 'wiki#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

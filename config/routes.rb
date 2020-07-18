Rails.application.routes.draw do
  get 'wiki/index'
  root 'wiki#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

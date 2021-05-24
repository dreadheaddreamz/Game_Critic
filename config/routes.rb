Rails.application.routes.draw do
  resources :comments, only: [:index, :create, :show, :delete]
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

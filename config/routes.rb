Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations
  resources :users_locations, only: [:create, :index, :destroy] do
    resources :lists, except: [:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

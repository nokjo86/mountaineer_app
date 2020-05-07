Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations do
    resources :lists, only:[:edit, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

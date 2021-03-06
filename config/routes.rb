Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :posts, only: [:index, :show, :create, :destroy] do 
    resources :photos, only: [:create]
  end
end

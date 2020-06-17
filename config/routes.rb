Rails.application.routes.draw do
  get 'users/show'=> "users#show"
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create]
  resources :users, only: [:show, :new, :edit]
end

Rails.application.routes.draw do
  get 'users/show'=> "users#show"
  get 'coment/new'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  resources :posts, only: [:index, :new,:show, :create,:destroy] do
    resources :coments
  end
  resources :users, only: [:show, :new, :edit]
end

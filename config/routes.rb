Rails.application.routes.draw do
  root 'posts#index'
resources :friendships, only: %i[destroy]
  devise_for :users

  
  resources :users, only: %i[index show] do
    resources :friendships, only: %i[create approve destroy]
    get '/approve_friendship', to:'friendships#approve'
  end
  resources :posts, only: %i[index create] do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

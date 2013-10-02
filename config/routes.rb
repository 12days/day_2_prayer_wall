Day2PrayerWall::Application.routes.draw do

  resources :posts do
    get '/pray', to: :pray
    resources :comments, only: [:create]
  end

  resources :users, only: [:new, :create]

  resources :user_sessions, only: [:new, :create, :destroy]
  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  root to: 'posts#index'
end

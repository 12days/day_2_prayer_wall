Day2PrayerWall::Application.routes.draw do
  resources :posts do
    get '/pray', to: :pray
    resources :comments, only: [:create]
  end
  root to: 'posts#index'
end

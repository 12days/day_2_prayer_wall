Day2PrayerWall::Application.routes.draw do
  resources :posts

  root to: 'posts#index'
end

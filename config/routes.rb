Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :posts
      resources :favorites
      post '/sessions/', to: 'sessions#create'
    end
  end
end

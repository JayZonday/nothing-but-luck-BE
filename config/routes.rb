Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :posts
      resources :favorites
      post '/sessions/', to: 'sessions#create'
      get '/sessions/:id', to: 'sessions#show'
      post '/users/', to: 'users#create'
      mount ActionCable.server => '/cable'
    end
  end
end

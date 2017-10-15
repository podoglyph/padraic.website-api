Rails.application.routes.draw do

  root "sessions#new"

  namespace :api do
    namespace :v1 do
      get '/login', to: 'sessions#new'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'

      get '/posts', to: 'posts#index'
      get '/post/:id', to: 'posts#show'

      post 'signup', to: 'users#create'
      
      resources :users, only: [:new, :create]
    end
  end

end

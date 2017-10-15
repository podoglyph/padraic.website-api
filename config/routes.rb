Rails.application.routes.draw do

  root "sessions#new"

  namespace :api do
    namespace :v1 do
      get '/posts', to: 'posts#index'
      get '/post/:id', to: 'posts#show'
      resources :users, only: [:new, :create]
    end
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end

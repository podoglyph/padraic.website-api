Rails.application.routes.draw do

  root 'api/v1/posts#index'
  namespace :api do
    namespace :v1 do
      get '/posts', to: 'posts#index'
    end
  end

end

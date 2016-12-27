Rails.application.routes.draw do
  get '/movies' => 'movies#index'

  namespace :api do
    namespace :v1 do
      get '/movies' => 'movies#index'
      get '/movies/:id' => 'movies#show'
      post 'movies' => 'movies#create'
      patch 'movies/:id' => 'movies#update'
      delete 'movies/:id' => 'movies#destroy'
    end
    namespace :v2 do
      get '/movies' => 'movies#index'
      get '/movies/:id' => 'movies#show'
      post 'movies' => 'movies#create'
      patch 'movies/:id' => 'movies#update'
      delete 'movies/:id' => 'movies#destroy'
    end
  end
end

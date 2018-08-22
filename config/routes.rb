Rails.application.routes.draw do

  resources :restaurants
  namespace :api do
    namespace :v1 do
      post 'search', to: 'users#search'
      post 'login', to: 'users#login'
      post 'signup', to: 'users#create'
      post 'favorites', to: 'favorites#create'
      post 'restaurants', to: 'restaurants#create'
      get 'users/:id', to: 'users#show'
      get 'restaurants', to: 'restaurants#index'

    end
  end

end

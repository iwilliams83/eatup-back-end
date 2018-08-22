Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'search', to: 'users#search'
      post 'login', to: 'users#login'
      post 'signup', to: 'users#create'
      post 'favorites', to: 'favorites#create'
      post 'restaurants', to: 'restaurants#create'
      get 'users/:id', to: 'users#show'

    end
  end

end

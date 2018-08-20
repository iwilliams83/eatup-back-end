Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'search', to: 'users#search'
      post 'login', to: 'users#login'
      post 'signup', to: 'users#create'
      post 'favorites', to: 'favorites#create'
    end
  end

end

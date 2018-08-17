Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'search', to: 'restaurants#search'
      post 'login', to: 'users#login'
      post 'signup', to: 'users#create'
    end
  end

end

Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'restaurants', to: 'restaurants#search'
      post 'users', to: 'users#login'
    end
  end

end

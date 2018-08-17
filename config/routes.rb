Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      post 'restaurants', :to => 'restaurants#search'
      resources :users, only: [:create, :show, :index]
    end
  end

end

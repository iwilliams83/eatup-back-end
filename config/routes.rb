Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'restaurants', :to => 'restaurants#search'
    end
  end

end

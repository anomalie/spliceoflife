Rails.application.routes.draw do
  root 'articles#index'

  resources :articles
  resources :users

  namespace :api, defaults: {format: :json}  do
      namespace :v1 do
        resources :articles, :path => 'articles'
      end      
  end

end

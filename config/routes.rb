Rails.application.routes.draw do

  # Route path
  root 'pages#index'
  namespace :api do
    namespace :v1 do 
      resources :adventures, params: :id
      resources :birds, only: [:create, :destroy]
    end
  end
  

  get '*path', to: 'pages#index', via: :all
end

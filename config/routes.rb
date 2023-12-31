Rails.application.routes.draw do
  root "emails#new"

  get '/emails', to: 'emails#list'
  get '/emails/new', to: 'emails#new'
  post '/emails', to: 'emails#create'

  get '/restaurants', to: 'restaurants#list'
  get '/addRestaurant', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  root 'sessions#login'
  get 'projects/index'
  get 'users/index' 
  get 'sessions/login'
  get 'bugs/index'
  get 'users/addproject'
  get  '/index',to:"users#show"
  # get  '/index',to:"users#destroy"
  get '/projects', to:"projects#index"
  post '/login',to:"sessions#create"
  # post '/projects',to:"projects#create"
  get '/login',to:"sessions#login"
  # get '/destroy',to:'sessions#destroy'
  get '/projrctlist', to: "users#projrctlist"
  post "sessions/index" 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resources :sessions
  resources :projects
end

Rails.application.routes.draw do
  
  resources :gpus
  resources :cpus
  resources :hard_drives
  resources :reviews
  resources :manufacturers
  resources :categories
  
  resources :items do
    get :get_specifications, on: :collection
  end
  get 'items/new'

  root "items#index"

  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get '/auth/:provider/callback', :to => 'sessions#create'
  get '/auth/failure', :to => 'sessions#failure'

  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, except: %i(index show destroy)
end

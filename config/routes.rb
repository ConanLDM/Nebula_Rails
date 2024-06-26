Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: 'nebulae#home'

  resources :nebulae

  get :thoughts, to: 'shared#thoughts'

  get '/about', to: 'nebulae#about'


  resources :supernovae

  get '/supernovae', to: 'supernovae#index', as: :supernovae_index


  resources :astro_images, only: [:index, :new, :create, :show]
end

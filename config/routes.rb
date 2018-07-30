Rails.application.routes.draw do
  get '/', to: 'application#home'
  resources :users
  get '/signup', to: 'users#new'
  resources :comments

  resources :locations do
    resources :crags
  end
  resources :locations
  # resources :crags, only: [:new, :create, :show, :edit, :update] do
  #   resources :comments
  #   end
  resources :sessions
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  root 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

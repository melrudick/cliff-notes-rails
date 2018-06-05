Rails.application.routes.draw do
  resources :users
  get '/signup', to: 'users#new'
  resources :comments
  get 'flags/new'
  resources :locations do
    resources :crags
  end
    resources :locations
    resources :crags, only: [:new, :create, :show, :edit, :update] do
      resources :flags
    end
  root 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

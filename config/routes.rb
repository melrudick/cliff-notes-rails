Rails.application.routes.draw do
  resources :locations do
    resources :crags
  end
    resources :locations
  root 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

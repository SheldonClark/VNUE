Rails.application.routes.draw do

  root 'bands#index'
  resources :bands
  resource :sessions, only: %i(new create destroy)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :bands
  root 'bands#index'
  resources :venues
  resource :venue_sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

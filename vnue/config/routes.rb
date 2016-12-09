Rails.application.routes.draw do

  root 'bands#index'
  resources :bands
  resource :band_sessions, only: %i(new create destroy)
  get '/band_login' => 'band_sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

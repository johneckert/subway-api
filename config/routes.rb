Rails.application.routes.draw do
  resources :transfers
  resources :stops
  resources :stop_times
  resources :shapes
  resources :routes
  resources :calendars
  resources :calendar_dates
  resources :agencies
  resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: 'application#index'
end

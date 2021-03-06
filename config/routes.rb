Rails.application.routes.draw do

  resources :conversations do
    resources :messages
  end

  resources :bookings
  get 'registrations/create'
  get 'registrations/update'

  resources :charges
  resources :suburbs
  resources :pharmacies
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'

end

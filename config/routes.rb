Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :notes
  resources :patients
  resources :doctors do
    member do
    get 'today_appointments'
    get "weekly_appointments"
    get 'patients'
  end
  end
  resources :appointments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "doctors#index"

end

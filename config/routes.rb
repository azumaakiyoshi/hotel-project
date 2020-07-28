Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contacts
  resources :prefectures 
    resources :hotels do
      resources :reviews
      resources :reservations
    end
  root 'hotels#index'
  get 'hotels', to: 'hotels#index'
end

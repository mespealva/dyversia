Rails.application.routes.draw do
  resources :horarios
  resources :appointments
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :blogs
  root 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

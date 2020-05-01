Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :buildings, only: [:index, :show, :edit, :update, :create, :destroy]
resources :companies, only: [:index, :show, :new, :create]

# resources :buildings, except: :destroy


end

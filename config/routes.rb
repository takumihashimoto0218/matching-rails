Rails.application.routes.draw do
  devise_for :users
  resources :profiles, only: [:show, :new, :create, :edit, :update]
end

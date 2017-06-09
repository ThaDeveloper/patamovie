Rails.application.routes.draw do
  devise_for :users
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies, only: [:show, :index]
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }


  root 'movies#index'


end

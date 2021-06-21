Rails.application.routes.draw do
 devise_for :users

  root 'notes#index'
  get 'notes/index'
  get 'users/profile'
  post 'notes/new'
  get 'users/show'


  resources :users
  resources :tasks
  resources :notes
  namespace :notes do
    resources :tasks
  end
end

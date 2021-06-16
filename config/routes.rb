Rails.application.routes.draw do
 devise_for :users

  root 'notes#index'
  get 'notes/index'

  post 'notes/new'
  get 'users/profile'
  resources :users
  resources :tasks
  resources :notes do
    member do
      patch "upvote", to: "notes#upvote"
      patch "downvote", to: "notes#downvote"
    end
  end

  namespace :notes do
    resources :tasks
  end
end

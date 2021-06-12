Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  get'/top' => 'home#top'

  get'/connection' => 'home#connection'
  get'/notes/new' => 'notes#new'
  post'/notes' =>'notes#create'
  get'/notes' =>'notes#index'
  get'/show' =>"notes#show"
  get'/edit' =>'notes#edit'
  patch'/notes/:id' =>"notes#update",as:'update_note'
  delete'/notes/:id' =>"notes#destroy",as:'destroy_note'

  post '/upvote/:note_id' => 'notes#upvote', as: 'upvote'
  delete '/downvote/:note_id' => 'notes#downvote', as: 'downvote'

  root 'notes#index'
  get'/about' => 'home#about'
  end

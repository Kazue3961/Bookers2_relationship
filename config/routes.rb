Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]

  root to: 'home#top'

  get 'home/top' => 'home#top'
  get 'home/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

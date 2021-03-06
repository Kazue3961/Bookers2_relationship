Rails.application.routes.draw do

  devise_for :users

  root to: 'home#top'

  get 'home/top' => 'home#top'
  get 'home/about'

  resources :users, only: [:show, :index, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end

  resources :books do
  	resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

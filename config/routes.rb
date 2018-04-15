Rails.application.routes.draw do
  get 'sessions/new'

  get '/', to:'myposts#top'
  resources :myposts do
    collection do
      post :confirm
   end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  get '/sessions',to:'sessions#new'
end

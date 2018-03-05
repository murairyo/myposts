Rails.application.routes.draw do
  # root to: 'myposts#index'
  get '/', to:'myposts#top'
  # get '/myposts', to:'myposts#index'
  resources :myposts do
    collection do
      post :confirm
   end
  end
end

Rails.application.routes.draw do
  root to: 'myposts#index'
  get '/myposts', to:'myposts#index'
end

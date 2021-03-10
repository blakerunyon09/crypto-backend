Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :cryptocurrencies

  get '/search', to: 'cryptocurrencies#search'
  get '/login', to: 'users#login'
  delete '/removeFav', to: 'favorites#removeFav'
end

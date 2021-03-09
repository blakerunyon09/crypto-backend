Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :cryptocurrencies

  get '/search', to: 'cryptocurrencies#search'
end

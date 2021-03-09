Rails.application.routes.draw do
  resources :cryptocurrencies

  get '/search', to: 'cryptocurrencies#search'
end

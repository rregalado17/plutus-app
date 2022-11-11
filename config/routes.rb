Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#hello'
  get '/about', to:'about#about'
  resources :stocks, only: [:show, :index]
  

end

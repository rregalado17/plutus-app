Rails.application.routes.draw do

  root 'homepages#home'
  get 'about', to: 'homepages#about'
  resources :stocks, :categories 
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end

Rails.application.routes.draw do

  root 'homepages#home'
  get 'about', to: 'homepages#about'
  resources :stocks
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end

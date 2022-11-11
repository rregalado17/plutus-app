Rails.application.routes.draw do

  root 'homepages#home'
  get 'about', to: 'homepages#about'
  resources :stocks
  
end

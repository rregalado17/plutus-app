Rails.application.routes.draw do

  root 'homepages#home'
  resources :stocks
  
end

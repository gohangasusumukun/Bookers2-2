Rails.application.routes.draw do

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/about' => "homes#about"
  root to: 'homes#top'
  devise_for :users
  resources :users
  resources :books
  

end

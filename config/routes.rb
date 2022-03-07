Rails.application.routes.draw do
  get 'posts/index'
  get 'home/top'
  get 'home/about' => 'home#about'
  #root 'application#hello'
  root 'tasks#index'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
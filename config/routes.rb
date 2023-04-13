Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users
  
  get "homes/about" => "homes#about"
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:edit, :show]
  resources :registrations
  resources :sessions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

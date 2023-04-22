Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  get "homes/about" => "homes#about"
  resources :books, only: [:new, :index, :show, :create, :edit]
  resources :users, only: [:edit, :show]
  resources :registrations
  resources :sessions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

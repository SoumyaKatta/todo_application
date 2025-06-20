Rails.application.routes.draw do
  resources :todos do
    member do
      patch :toggle
    end
  end
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  root 'todos#index'
end
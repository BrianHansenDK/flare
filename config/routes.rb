Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # Defines the root path route ("/")
  root 'main#index'
end

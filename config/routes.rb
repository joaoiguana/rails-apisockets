Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :chat_rooms, only: [:index, :create, :show]
  resources :messages, only: [:create]

  mount ActionCable.server => '/cable'
end

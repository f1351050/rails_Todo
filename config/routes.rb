Rails.application.routes.draw do
  
  root to: "main#index"

  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#addTodo'
  delete 'todos/:id', to: 'todos#deleteTodo'

  get "signup", to: "signup#new"
  post "signup", to: "signup#create"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
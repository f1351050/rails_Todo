Rails.application.routes.draw do

  get '', to: 'todos#index'
  get 'todos', to: 'todos#index'
  post 'todos', to: 'todos#addTodo'
  delete 'todos/:id', to: 'todos#deleteTodo'

  root to: "main#index"
  get "signup", to: "signup#new"
  post "signup", to: "signup#create"
end
Rails.application.routes.draw do
  root 'todos#index'
  patch '/' =>  'todos#update'
  post '/' => 'todos#create'
  #resources :todos
end

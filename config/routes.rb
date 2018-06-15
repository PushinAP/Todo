Rails.application.routes.draw do
  root 'todos#index'
  #post 'update' =>  'todos#update'
  #post 'todo' => 'todos#create'
  resources :todos
end

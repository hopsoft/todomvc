Rails.application.routes.draw do
  resources :todos, only: [:index]
  root "todos#index"
end

Rails.application.routes.draw do
  resources :todo_lists do
    resources :tasks
  end
  namespace :todo_list do
    resources :tasks
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  root to: 'pages#index'
end

Rails.application.routes.draw do
  get 'books', to: 'books#index'
  get 'books/new/', to: 'books#new'

  get 'welcome/index'
  get '/about', to: 'about#index'
  resources :articles do
    resources :comments


  end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

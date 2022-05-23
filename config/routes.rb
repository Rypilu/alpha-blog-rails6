Rails.application.routes.draw do
  # rails knows this is pointed to app/controllers/pages_controller.rb
  # after controller name the #pages is the name of the method.
  # This is telling rails to expect a home method in the pages.controller.rb
  # pages controller with home method/action
  root 'pages#home'
  get 'about', to: 'pages#about'
  # exposes all restful routes :show, :index, :new, :create, :edit, :update, :destroy
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end

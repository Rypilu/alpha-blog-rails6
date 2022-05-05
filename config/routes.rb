Rails.application.routes.draw do
  # rails knows this is pointed to app/controllers/pages_controller.rb
  # after controller name the #pages is the name of the method.
  # This is telling rails to expect a home method in the pages.controller.rb
  # pages controller with home method/action
  root 'pages#home'
  get 'about', to: 'pages#about'
end

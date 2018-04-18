Rails.application.routes.draw do
  get 'users/new'

  	root 'static_pages#home'
 	get  '/home', to: 'static_pages#home', as: 'home'
  	get  '/help', to: 'static_pages#help', as: 'help'
  	get  '/about', to: 'static_pages#about', as: 'about'

  	get '/signup', to: 'users#new', as: 'signup'
  	get '/log_in', to: 'static_pages#home', as: 'login'
end

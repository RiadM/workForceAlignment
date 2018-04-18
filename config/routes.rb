Rails.application.routes.draw do
	root 'static_pages#home'

  get  '/home', to: 'static_pages#home', as: 'home'
	get  '/help', to: 'static_pages#help', as: 'help'
	get  '/about', to: 'static_pages#about', as: 'about'

	get '/signup', to: 'users#new', as: 'signup'
	post '/signup',  to: 'users#create'
	
	get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
	resources :users
end

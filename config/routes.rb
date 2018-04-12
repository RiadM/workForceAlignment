Rails.application.routes.draw do
  	root 'static_pages#home'
 	get  '/home', to: 'static_pages#home', as: 'homes'
  	get  '/help', to: 'static_pages#help', as: 'help'
  	get  '/about', to: 'static_pages#about', as: 'about'
end

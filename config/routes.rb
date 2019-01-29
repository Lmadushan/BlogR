Rails.application.routes.draw do


	# Route for root
	root 'pages#index'

	# Route for About Page 
	get 'about' => 'pages#about'

	#Resource route for posts
	resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

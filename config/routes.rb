Rails.application.routes.draw do
  devise_for :users
  # get 'pages/home' #this is the path of folders in the omrails folder. pages is in views folder and home is the home.html.erb file

  	as :user do
  		get "signin" => 'devise/sessions#new' #makes a sign in path
  		delete "signout" => 'devise/sessions#destroy' #makes a sign out path
  		get "signup" => 'devise/registrations#new' #makes a sign up path
	end
	# (include underneeth devise_for :users, adds new routes that point to devise controllers, thus allowing us to simplfy code in the navbar )


  root 'pages#home' 
  #this makes the home.html.erb file the home page at localhost 3000

  get 'about' => 'pages#about'  
  #how to create a new route

  get 'contact' => 'pages#contact' 

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
end

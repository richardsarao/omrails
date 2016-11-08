#config/routes.rb
Rails.application.routes.draw do
  #get 'users/:username', to: 'users#show', as: 'user'  #to get to user's showpage
 # resources :users, only: :show, param: :username  alternative to get to user's showpage
 get 'feed', to: 'feed#show'
 
  resources :users, only: :show, param: :username do #vid59 9:31
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end
 
 resources :items, :pins, :tweets
 
  ActiveAdmin.routes(self)
  devise_for :users
  # get 'pages/home' #this is the path of folders in the omrails folder. pages is in views folder and home is the home.html.erb file

  	as :user do
  		get "signin", to: 'devise/sessions#new' #makes a sign in path
  		delete "signout", to: 'devise/sessions#destroy' #makes a sign out path
  		get "signup", to: 'devise/registrations#new' #makes a sign up path
	end
	# (include underneeth devise_for :users, adds new routes that point to devise controllers, thus allowing us to simplfy code in the navbar )


  root 'pages#home' 
  #this makes the home.html.erb file the home page at localhost 3000

  get 'about', to: 'pages#about'  
  #how to create a new route

  get 'contact', to: 'pages#contact' 

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
end

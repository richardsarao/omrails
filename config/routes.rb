#config/routes.rb
Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
      as :user do
        get "signin", to: 'devise/sessions#new' #makes a sign in path
        delete "signout", to: 'devise/sessions#destroy' #makes a sign out path
        get "signup", to: 'devise/registrations#new' #makes a sign up path
  end

 get 'feed', to: 'feed#show'
 
  resources :users, only: :show, param: :username do #vid59 9:31
      member do
        post 'follow', to: 'follows#create'
        delete 'unfollow', to: 'follows#destroy'
      end
  end
 
 resources :items do #vid 66 4:55
    member do
      post 'vote', to: 'votes#create'
      delete 'unvote', to: 'votes#destroy'
    end
 end


resources :pins, :tweets

resources :tweets do 
    member do
      post 'vote', to: 'votes#create'
      delete 'unvote', to: 'votes#destroy'
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
 end
 
  root 'pages#home' 
  #this makes the home.html.erb file the home page at localhost 3000

  get 'about', to: 'pages#about'  
  #how to create a new route

  get 'contact', to: 'pages#contact' 

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
end

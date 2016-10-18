Rails.application.routes.draw do
  # get 'pages/home' #this is the path of folders in the omrails folder. pages is in views folder and home is the home.html.erb file

  root 'pages#home' #this makes the home.html.erb file the home page at localhost 3000

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about' => 'pages#about'  #how to create a new route

 get 'contact' => 'pages#contact' 
end

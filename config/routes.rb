Scotchbible::Application.routes.draw do
 
  resources :scotches do
  	resources :comments
	end


  #...
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"
end
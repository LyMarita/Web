Rails.application.routes.draw do

 # get "events" => "events#index" , as: "all_movies"# gets "url" => "controller_name#module_name"
 #  get "events/new" => "events#new", as: "movies"
 #  get "events/:id" => "events#show", as: "movie"
 #  delete "events/:id" => "events#destroy"
 #  get "events/:id/edit" => "events#edit", as: "edit_movie" 
 #  # as: "edit_movie" is equal "events/:id/edit"
 #  patch "events/:id" => "events#update" 
 #  post "events/new" => "events#create"

	get 'news' => 'news#index'

	#delete "categories/" =>"categories#show", as: "delete_category"
	resources :categories
end

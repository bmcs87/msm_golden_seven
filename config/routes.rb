Rails.application.routes.draw do
  
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })
  
  # Routes for the Director resource:
  # CREATE
  get("/directors/new_form", :controller => 'directors', :action => 'create_form')
  get("/create_director", :controller => 'directors', :action => 'create_row')
  
  # READ
  get("/directors", :controller =>'directors', :action => 'index')
  get("/directors/:id", :controller =>'directors', :action => 'show')

  # UPDATE
  get("/directors/:id/edit_form", :controller => 'directors', :action => 'update_form')
  get("/update_director/:id", :controller => 'directors', :action => 'update_row')
  
  # DESTROY
  get("/delete_director/:id", :controller => 'directors', :action => 'destroy')
  
  
  # Routes for the Movies resource:
  # CREATE
  get("/movies/new_form", :controller => 'movies', :action => 'create_form')
  get("/create_movie", :controller => 'movies', :action => 'create_row')
 
  # READ
  get("/movies", :controller =>'movies', :action => 'index')
  get("/movies/:id", :controller =>'movies', :action => 'show')
  
  #UPDATE
  get("/movies/:id/edit_form", :controller => 'movies', :action => 'update_form')
  get("/update_movie/:id", :controller => 'movies', :action => 'update_row')
  
  #DESTROY
  get("/delete_movie/:id", :controller => 'movies', :action => 'destroy')
  
 
  # Routes for the Actors resource:
  #CREATE
  get("/actors/new_form", :controller => 'actors', :action => 'create_form')
  get("/create_actor", :controller => 'actors', :action => 'create_row')
  
  #READ
  get("/actors", :controller =>'actors', :action => 'index')
  get("/actors/:id", :controller =>'actors', :action => 'show')

  #UPDATE
  get("/actors/:id/edit_form", :controller => 'actors', :action => 'update_form')
  get("/update_actor/:id", :controller => 'actors', :action => 'update_row')
  
  #DESTROY
  get("/delete_actor/:id", :controller => 'actors', :action => 'destroy')

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end

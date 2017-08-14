Rails.application.routes.draw do
  
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })
  
  # Routes for the Director resource:
  # CREATE
  get("/directors/new", :controller => 'directors', :action => 'new')
  get("/create_director", :controller => 'directors', :action => 'create')
  
  # READ
  get("/directors", :controller =>'directors', :action => 'index')
  get("/directors/:id", :controller =>'directors', :action => 'details')

  # UPDATE
  get("/directors/:id/edit", :controller => 'directors', :action => 'edit')
  get("/update_director/:id", :controller => 'directors', :action => 'update')
  
  # DESTROY
  get("/delete_director/:id", :controller => 'directors', :action => 'destroy')
  
  
  # Routes for the Movies resource:
  # CREATE
  get("/movies/new", :controller => 'movies', :action => 'new')
  get("/create_movie", :controller => 'movies', :action => 'create')
 
  # READ
  get("/movies", :controller =>'movies', :action => 'index')
  get("/movies/:id", :controller =>'movies', :action => 'details')
  
  #UPDATE
  get("/movies/:id/edit", :controller => 'movies', :action => 'edit')
  get("/update_movie/:id", :controller => 'movies', :action => 'update')
  
  #DESTROY
  get("/delete_movie/:id", :controller => 'movies', :action => 'destroy')
  
 
  # Routes for the Actors resource:
  #CREATE
  get("/actors/new", :controller => 'actors', :action => 'new')
  get("/create_actor", :controller => 'actors', :action => 'create')
  
  #READ
  get("/actors", :controller =>'actors', :action => 'index')
  get("/actors/:id", :controller =>'actors', :action => 'show')

  #UPDATE
  get("/actors/:id/edit", :controller => 'actors', :action => 'edit')
  get("/update_actor/:id", :controller => 'actors', :action => 'update')
  
  #DESTROY
  get("/delete_actor/:id", :controller => 'actors', :action => 'destroy')

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end

class MoviesController < ApplicationController
 
  def index
    @movies = Movie.all
    render("movies/index.html.erb")
  end

  def show
    @movie = Movie.find(params[:id])
    render("movies/show.html.erb")
  end
  
  def new
    @movie = Movie.new
    
    render("movies/new.html.erb")
  end
  
  def create
    
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    #@movie.director_id = params[:director_id]

    @movie.save
    redirect_to movies_url
  end
 
  def edit
    @movie = Movie.find(params[:id])
    
    render("movies/edit.html.erb")
  end
  
  def update
    @movie = Movie.find(params[:id])
    
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    #@movie.director_id = params[:director_id]
    
    @movie.save
    
    redirect_to :controller =>'movies', :action => 'show', :id => @movie.id
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy 
    redirect_to movies_url
  end
end

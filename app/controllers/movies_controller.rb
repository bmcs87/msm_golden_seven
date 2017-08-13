class MoviesController < ApplicationController
 
  def new_form
  end

  def create_row
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save

    render("/movies/details.html.erb")
  end
 
  def index
    @movies = Movie.all
  end

  def details
    @movie = Movie.find(params[:id])
    render("/movies/details.html.erb")
  end

  def edit
    @movie = Movie.find(params[:id])
    
    render("/movies/edit.html.erb")
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
    render("/movies/details.html.erb")
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end
end

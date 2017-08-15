class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("directors/index.html.erb")
  end

  def show
    @director = Director.find(params[:id])
    render("directors/show.html.erb")
  end

  def new
    @director = Director.new
    
    render("directors/new.html.erb")
  end

  def create
    
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    redirect_to directors_url
  end
  
  def edit
    @director = Director.find(params[:id])
    
    render("directors/edit.html.erb")
  end

  def update
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    redirect_to :controller =>'directors', :action => 'show', :id => @director.id
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy 
    redirect_to directors_url
  end
end

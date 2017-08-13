class DirectorsController < ApplicationController

  def index
    @directors = Director.all
    render("actors/index.html.erb")
  end

  def details
    @director = Director.find(params[:id])
    render("/directors/details.html.erb")
  end

  def new
    @director = Director.new
    render("directors/new/html.erb")
  end

  def create
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save
    render("directors/details.html.erb")
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

    render("/directors/edit.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end

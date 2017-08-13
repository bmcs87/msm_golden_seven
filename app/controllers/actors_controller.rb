class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
    render("actors/index.html.erb")
  end
  
  def details
    @actor = Actor.find(params[:id])
    render("actors/details.html.erb")
  end
  
  def new
    @actor = Actor.new
    
    @actor.save
    render("actors/new.html.erb")
  end
  
  def create

    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    render("actors/details.html.erb")
  end
  
  def edit
    @actor = Actor.find(params[:id])
    
    render("actors/edit.html.erb")
  end
  
  def update
    @actor = Actor.find(params[:id])

    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    
    render("actors/edit.html.erb")
  end
  
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy 
    render("actors/destroy.html.erb")
  end
  
end

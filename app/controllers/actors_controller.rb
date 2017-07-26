class ActorsController < ApplicationController

  def create_form
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save
    render("/actors/details.html.erb")
  end
  
  def index
    @actor = Actor.all
  end

  def details
    @actor = Actor.find(params[:id])
    render("/actors/details.html.erb")
  end

  def update_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("/actors/edit_form.html.erb")
  end

  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
  end
end

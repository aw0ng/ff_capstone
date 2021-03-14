class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render "index.json.jb"
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @dog = Dog.new(
      name: params[:name],
      breed_id: params[:breed_id],
      weight: params[:weight],
      min_of_activity: params[:min_of_activity],
      daily_kcal: params[:daily_kcal],
      image: params[:image],
      diet_id: params[:diet_id],
      fitness_id: params[:fitness_id],
      user_id: current_user.id,
    )
    @dog.save
    render "show.json.jb"
    # else
    #   render json: "You must be logged in to add a furiend"
    # end
  end

  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.name = params[:name] || @dog.name
    @dog.breed_id = params[:breed_id] || @dog.breed_id
    @dog.weight = params[:weight] || @dog.weight
    @dog.min_of_activity = params[:min_of_activity] || @dog.min_of_activity
    @dog.daily_kcal = params[:daily_kcal] || @dog.daily_kcal
    @dog.image = params[:image] || @dog.image
    @dog.user_id = params[:user_id] || @dog.user_id
    @dog.diet_id = params[:diet_id] || @dog.diet_id
    @dog.fitness_id = params[:fitness_id] || @dog.fitness_id
    @dog.save
    render "show.json.jb"
  end
end

# TODO - authorizations
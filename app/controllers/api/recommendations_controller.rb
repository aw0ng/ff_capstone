class Api::RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
    render "index.json.jb"
  end

  def show
    @recommendation = Recommendation.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @recommendation = Recommendation.new(
      breed_id: params[:breed_id],
      weight: params[:weight],
      min_of_activity: params[:min_of_activity],
      daily_kcal: params[:daily_kcal],
      diet_id: params[:diet_id],
      fitness_id: params[:fitness_id],
      dog_id: dog.id,
    )
    @recommendation.save
    render "show.json.jb"
    # else
    #   render json: "You must be logged in to add a furiend"
    # end
  end

  def update
    @recommendation = Recommendation.find_by(id: params[:id])
    @recommendation.breed_id = params[:breed_id] || @recommendation.breed_id
    @recommendation.weight = params[:weight] || @recommendation.weight
    @recommendation.min_of_activity = params[:min_of_activity] || @recommendation.min_of_activity
    @recommendation.daily_kcal = params[:daily_kcal] || @recommendation.daily_kcal
    @recommendation.diet_id = params[:diet_id] || @recommendation.diet_id
    @recommendation.fitness_id = params[:fitness_id] || @recommendation.fitness_id
    @recommendation.dog_id = params[:dog_id] || @recommendation.dog_id
    @recommendation.save
    render "show.json.jb"
  end
end
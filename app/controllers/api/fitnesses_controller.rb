class Api::FitnessesController < ApplicationController
  def index
    @fitnesses = Fitness.all
    render "index.json.jb"
  end

  def show
    @fitness = Fitness.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @fitness = Fitness.new(
      activity: params[:activity],
      kcal_per_minute: params[:kcal_per_minute],
    )
    @fitness.save
    render "show.json.jb"
  end

  def update
    @fitness = Fitness.find_by(id: params[:id])
    @fitness.activity = params[:activity] || @fitness.activity
    @fitness.kcal_per_minute = params[:kcal_per_minute] || @fitness.kcal_per_minute
    @fitness.save
    render "show.json.jb"
  end
end

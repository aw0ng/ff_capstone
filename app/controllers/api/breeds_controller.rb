class Api::BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    render "index.json.jb"
  end

  def show
    @breed = Breed.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @breed = Breed.new(
      name: params[:name],
      weight: params[:weight],
      min_of_activity: params[:min_of_activity],
      daily_kcal: params[:daily_kcal],
    )
    @breed.save
    render "show.json.jb"
  end

  def update
    @breed = Breed.find_by(id: params[:id])
    @breed.name = params[:name] || @breed.name
    @breed.weight = params[:weight] || @breed.weight
    @breed.min_of_activity = params[:min_of_activity] || @breed.min_of_activity
    @breed.daily_kcal = params[:daily_kcal] || @breed.daily_kcal
    @breed.save
    render "show.json.jb"
  end
end

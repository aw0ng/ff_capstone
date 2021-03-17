class Api::DietsController < ApplicationController
  def index
    @diets = Diet.all
    render "index.json.jb"
  end

  def show
    @diet = Diet.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @diet = Diet.new(
      brand: params[:brand],
      kcal_per_cup: params[:kcal_per_cup],
    )
    @diet.save
    render "show.json.jb"
  end

  def update
    @diet = Diet.find_by(id: params[:id])
    @diet.brand = params[:brand] || @diet.brand
    @diet.kcal_per_cup = params[:kcal_per_cup] || @diet.kcal_per_cup
    @diet.save
    render "show.json.jb"
  end
end

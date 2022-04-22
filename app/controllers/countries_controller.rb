class CountriesController < ApplicationController

  def index
    @countries = Country.all.order(name: :asc)

    render json: @countries
  end

  def show
    @country = Country.find(params[:id])
    
    render json: @country
  end

  def photo_paths
    @photo_paths = Country.find(params[:id]).photo_paths.pluck(:name)
    render json: @photo_paths
  end

  def experiences
    @experiences = Country.find(params[:id]).experiences.order(name: :asc)
    render json: @experiences
  end
  
  def tops
    @top5 = Country.top_rated_experiences(params[:id])
    render json: @top5
  end
end

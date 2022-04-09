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
    @countries = Country.find(params[:id]).experiences.order(name: :asc)
    render json: @countries
  end

end

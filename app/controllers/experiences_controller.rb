class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all.order(name: :asc)

    render json: @experiences
  end

  def show
    @experience = Experience.find(params[:id])
    
    render json: @experience
  end
end

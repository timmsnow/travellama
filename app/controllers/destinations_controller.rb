class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all.order(name: :asc)

    render json: @destinations
  end
end

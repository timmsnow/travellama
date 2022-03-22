class DestinationTypesController < ApplicationController
  def index
    @destination_types = DestinationType.all

    render json: @destination_types
  end
end

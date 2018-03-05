class Api::V1::LocationsController < ApplicationController

  def index
    locations = Location.all
    render json: locations
  end

  def create
    location = Location.new(location_params)
    if location && location.save
      render json: location
    else
      render json: { error: 'Did Not Create' }
    end
  end

  def update
    if @location && @location.update(alarm_params)
      render json: @location
    else
      render json: { error: 'Did Not Update' }
    end
  end

  def destroy
    if @location && @location.destroy
      render json: location
    else
      render json: { error: 'Did Not Delete' }
    end
  end

  private

    def find_location
      @location = Location.find_by(id: params[:id])
    end

    def location_params
      params.permit(:id, :name, :longitude, :latitude) 
    end

end

class LocationsController < ApplicationController

def index
  @locations = Park.all
end

def show
  @location = Location.find(params[:id])

  @parks = Park.near([@location.latitude, @location.longitude], 2000)

end

def new

  # ip = request.ip ###for deployment

  ip = "69.65.45.57" ###for local testing

  @location = Location.new
end

def create
  ip = "69.65.45.57" ###for local testing

  # ip = request.ip ###for deployment

  @location = Location.new(ip: ip)

  if @location.save
    flash[:notice] = "Here are your adventures!"
    redirect_to @location
  else
    flash.now[:alert] = "There was an error"
    redirect_to root_path
  end
end

private

  def location_params
    params.require(:location).permit(:address)
  end
end

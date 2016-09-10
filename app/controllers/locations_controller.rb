class LocationsController < ApplicationController

def index
  # @locations = Location.all

  # @parks = Park.all

  @locations = Park.near("Erie, CO", 5000)

  ## after submit go to show page with the method being 
  ## @ location = Park.near(@location.lat, @location.long, 1000)
end

def show
  @location = Location.find(params[:id])

  # @parks = Location.near("Boulder, CO", 40)
end

def new
  # TODO: Restore when pushing to heroku
  #ip = request.ip
  # TODO: Delete when pushing to heroku
  ip = "67.164.165.153" #burned in ip address for local testing

  @location = Location.new
end

def create
  ip = "67.164.165.153"

  @location = Location.new(ip: ip)

  if @location.save
    flash[:notice] = "Address has been converted to long/lat"
    redirect_to @location
  else
    flash.now[:alert] = "There was an conversion error"
    redirect_to root_path
  end
end

private

  def location_params
    params.require(:location).permit(:address)
  end
end
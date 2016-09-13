class LocationsController < ApplicationController

def index
  @locations = Park.all
end

def show
  @location = Location.find(params[:id])

  @parks = Park.near([@location.latitude, @location.longitude], 500)

end

def new
  # TODO: Restore when pushing to heroku
  ip = request.ip
  # TODO: Delete when pushing to heroku
  # ip = "69.65.45.57" #burned in ip address for local testing

  @location = Location.new
end

def create
  # ip = "69.65.45.57"
  ip = request.ip

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
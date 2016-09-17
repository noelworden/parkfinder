class ParksController < ApplicationController
  def index
    @parks = Park.all
  end
  
  def show
    @park = Park.find(params[:id])

    @map_data ={
      key:"#{}"
    }
  end
end

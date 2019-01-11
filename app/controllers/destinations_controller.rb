class DestinationsController < ApplicationController

  def index

  end

  def new 
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)
  end

  def show
  end


  private

  def destination_params
    params.require(:destination).permit(:title, :body, images: [])
  end
end

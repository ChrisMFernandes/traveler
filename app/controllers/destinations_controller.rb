class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def new 
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)
    @destination.user_id = current_user.id
    
    if @destination.save
      redirect_to @destination
    else
      render 'new'
    end

  end

  def update

  end

  def show
    @destination = Destination.find(params[:id])
  end


  private

  def destination_params
    params.require(:destination).permit(:title, :body, :user_id)
  end

end

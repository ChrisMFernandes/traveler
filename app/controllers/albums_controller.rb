class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @destination = Destination.find_by(params[:id])
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    @album.user_id = current_user.id

    if @album.save
      redirect_to @album
    else
      render 'new'
    end

  end

  def update
  end

  def show
    @album = Album.find(params[:id])
  end

  def delete
  end

  private 

  def album_params
    params.require(:album).permit(:name, :date, images: [])
  end
end

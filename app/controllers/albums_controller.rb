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
    @destination = Destination.find(params[:destination_id])

    if @album.save
      redirect_to destination_album_path(@destination, @album.id)
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

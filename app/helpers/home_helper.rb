module HomeHelper

  def random_image(destination)
    if destination.albums?
        destination.albums.each do |album|
          return album.images[0]
        end
    end
  end
end

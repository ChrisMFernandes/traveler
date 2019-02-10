module HomeHelper

  def random_image(destinations)
    destinations.each do |dest|
      dest.albums.each do |album|
        return album.images[0]
      end
    end
  end
end

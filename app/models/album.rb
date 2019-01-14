class Album < ApplicationRecord
  has_many_attached :images
  
  has_many :album_destinations
  has_many :destinations, through: :album_destinations
end

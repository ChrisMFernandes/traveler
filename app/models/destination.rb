class Destination < ApplicationRecord
  belongs_to :user
  has_many :album_destinations
  has_many :albums, through: :album_destinations
end

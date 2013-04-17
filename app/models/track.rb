class Track < ActiveRecord::Base
  attr_accessible :album_id, :artist_id, :duration, :genre_id, :img_url, :location, :name, :rating, :track_number
  belongs_to :artists
  belongs_to :albums  
end

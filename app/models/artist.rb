class Artist < ActiveRecord::Base
  attr_accessible :album_id, :name, :real_name, :track_id
  has_many :albums
  has_many :tracks
end

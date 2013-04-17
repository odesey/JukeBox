class Album < ActiveRecord::Base
  attr_accessible :name, :release_date, :track_id
  has_many :tracks
  belongs_to :artists
end

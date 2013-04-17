class Library < ActiveRecord::Base
  attr_accessible :album_id, :name
  belongs_to :users
  has_many :albums
end

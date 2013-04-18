require 'pry'
class Track < ActiveRecord::Base
  attr_accessible :album_id, :artist_id, :duration, :genre_id, :img_url, :location, :name, :rating, :track_number
  belongs_to :artists
  belongs_to :albums  

  def self.search
  	binding.pry
    @track = Track.find(params[:id]) 
    client = Soundcloud.new(:client_id => 'd95790c46856021f7718e7ec26913e55') 
    @sound_cloud_widget = client.get('/oembed', :url => @track.player_url)['html']
  end

end

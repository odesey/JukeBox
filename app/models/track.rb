require 'pry'
require 'soundcloud'
class Track < ActiveRecord::Base
  attr_accessible :album_id, :artist_id, :duration, :genre_id, :img_url, :location, :name, :rating, :track_number
  belongs_to :artists
  belongs_to :albums  


 #  def self.list()
	# x = 0
	# i = 0
	# while x < @tracks.length do
	# 	@results = @tracks[i]
	# 	# binding.pry
	# 	i += 1
	# 	x += 1
	# 	@results
	# 	binding.pry
 #    end
 #  end



  def self.search(title)
  	# binding.pry
  	client = Soundcloud.new(:client_id => 'd95790c46856021f7718e7ec26913e55')
  	@tracks = client.get('/tracks', :name => "#{title}")
  	# binding.pry
  	track_url = 'http://soundcloud.com/forss/flickermood'
	embed_info = client.get('/oembed', :url => track_url)
	# Track.list << @tracks
	return @tracks
	# binding.pry
   #  @track = Track.find(params[:id]) 
    # @sound_cloud_widget = client.get('/oembed', :url => @tracks.track_url)['html']
  end

  

		# json = HTTParty.get(url)
		# 		results = []
		# 		json.each do |track_info|
		# 			results << Track.new(track_info)
		# 		end
		# 	return results
		# 	end
		# end

end

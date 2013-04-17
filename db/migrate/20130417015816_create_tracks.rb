class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :track_number
      t.integer :rating
      t.text :img_url
      t.float :duration
      t.text :location
      t.integer :album_id
      t.integer :genre_id
      t.integer :artist_id

      t.timestamps
    end
  end
end

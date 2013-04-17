class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :real_name
      t.integer :track_id
      t.integer :album_id

      t.timestamps
    end
  end
end

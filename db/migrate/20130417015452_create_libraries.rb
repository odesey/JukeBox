class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.integer :album_id

      t.timestamps
    end
  end
end

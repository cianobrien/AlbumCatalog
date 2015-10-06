class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.text :tracks
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end

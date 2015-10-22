class AddRatingToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :rating, :decimal, default: 0
  end
end

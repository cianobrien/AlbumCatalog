class MenuController < ApplicationController
  def browse
	@albums = Album.order(:artist, :year)
  end
end



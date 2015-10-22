class MenuController < ApplicationController
  def browse
	@albums = Album.order(:artist, :year)
        @profile = Profile.find(session[:profile_id])
  end
end

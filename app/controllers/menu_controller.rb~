class MenuController < ApplicationController
  include CurrentProfile
  before_action :set_profile
  def browse
	@albums = Album.order(:artist, :year)
  end
end



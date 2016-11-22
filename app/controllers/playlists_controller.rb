class PlaylistsController < ApplicationController
  def create
  	@song_id 	= params[:song_id]
  	@user		= current_user

  	song = Song.find(@song_id)
  	
  	@user.songs << song
  	@user.save

  	redirect_to songs_path
  end
end

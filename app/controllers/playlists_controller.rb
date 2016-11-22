class PlaylistsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def create
  	@song_id 	= params[:song_id]
  	@user		= current_user

  	song = Song.find(@song_id)
  	
  	@user.songs << song
  	@user.save

  	redirect_to songs_path
  end

  def destroy
  	@playlist_id 	= params[:id]
  	@user_id		= params[:user_id]
  	
  	x = User.find(@user_id)
  	x.playlists.find(@playlist_id).destroy

  	redirect_to user_path(@user_id)

  end

end

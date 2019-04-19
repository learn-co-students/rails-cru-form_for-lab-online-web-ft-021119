class SongsController < ApplicationController
   def new
      @song = Song.new
      @artists = Artist.all
      @genres = Genre.all
   end

   def create
      byebug
      @song = Song.new(song_params)
   end
   private
   def song_params

   end

   def current_song
      Song.find(params[:id])
   end
end
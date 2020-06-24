class SongsController < ApplicationController
   def index
      @songs = Song.all
   end
   
   def new
      @song = Song.new
      @artists = Artist.all
      @genres = Genre.all
   end

   def create
      @song = Song.new(song_params)
      if @song.save
         redirect_to song_path(@song)
      else
         redirect_to new_song_path
      end
   end

   def show
      @song = current_song
      @genre = @song.genre
      @artist = @song.artist
   end

   def edit
      @song = current_song
   end

   def update
      @song = current_song
      if @song.update(song_params)
         redirect_to song_path(@song)
      else
         redirect_to edit_song_path(@song)
      end
   end

   private
   def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
   end

   def current_song
      Song.find(params[:id])
   end
end
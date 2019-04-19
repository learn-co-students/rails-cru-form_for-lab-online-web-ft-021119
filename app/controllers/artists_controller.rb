class ArtistsController < ApplicationController

   def new
      @artist = Artist.new
   end

   def create
      @artist = Artist.new(artist_params)
      if @artist.save
         redirect_to artist_path(@artist)
      else
         redirect_to new_artist_path
      end
   end

   def show
      @artist = current_artist
   end

   def edit
      @artist = current_artist
   end

   def update
      @artist = current_artist
      if @artist.update(artist_params)
         redirect_to artist_path(@artist)
      else
         redirect_to edit_artist_path(@artist)
      end
   end
   

   private

   def artist_params
      params.require(:artist).permit(:name, :bio)
   end

   def current_artist
      @artist = Artist.find(params[:id])
   end
end

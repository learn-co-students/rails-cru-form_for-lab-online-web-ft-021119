class GenresController < ApplicationController
   def new
      @genre = Genre.new
   end

   def create
      @genre = Genre.new(genre_params)
      if @genre.save
         redirect_to genre_path(@genre)
      else
         redirect_to new_genre_path
      end
   end

   def show
      @genre = current_genre
   end

   def edit
      @genre = current_genre
   end

   def update
      @genre = current_genre
      if @genre.update(genre_params)
         redirect_to genre_path(@genre)
      else
         redirect_to edit_genre_path
      end
   end


   private

   def genre_params
      params.require(:genre).permit(:name)
   end

   def current_genre
      Genre.find(params[:id])
   end
end

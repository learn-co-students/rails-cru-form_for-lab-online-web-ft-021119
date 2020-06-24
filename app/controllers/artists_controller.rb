require 'pry'
class ArtistsController < ApplicationController
     def new
        @artist = Artist.new
    end

        def create
            @artist = Artist.new(artist_params(:name, :bio))
            @artist.save
            # binding.pry
            redirect_to artist_path(@artist)
        end

        def show
            # binding.pry
            @artist = Artist.find(params[:id])
            # binding.pry
        end

        def edit
            @artist = Artist.find(params[:id])
        end

        def update
            @artist = Artist.find(params[:id])
            @artist.update(artist_params(:name, :bio))
            # binding.pry
            redirect_to artist_path(@artist)
        end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end

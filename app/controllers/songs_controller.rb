require 'pry'
class SongsController < ApplicationController
    def new
        @song = Song.new
    end

        def create
            @song = Song.new(song_params(:name, :bio))
            @song.save
            redirect_to artist_path(@song)
        end

        def show
            @song = Song.find(params[:id])
            @genre = @song.genre
            @artist = @song.artist
        end

        def edit
            @song = Song.find(params[:id])
        end

        def update
            @song = Song.find(params[:id])
            @song.update(song_params(:name, :bio))
            # binding.pry
            redirect_to artist_path(@song)
        end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end

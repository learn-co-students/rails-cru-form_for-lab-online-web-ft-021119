require 'pry'
class SongsController < ApplicationController
    
    def index

    end
    
    
    def new
        @song = Song.new
    end

        def create
            # binding.pry
            @song = Song.new(song_params(:name, :bio))
            @song.artist_id = song_params(:artist_id)[:artist_id]
            @song.genre_id = song_params(:genre_id)[:genre_id]
            @song.save
            # binding.pry
            redirect_to song_path(@song)
        end

        def show
            @song = Song.find(params[:id])
            @genre = @song.genre
            @artist = @song.artist
            # @artist.songs << @song
            # @genre.songs << @song
            # binding.pry
        end

        def edit
            @song = Song.find(params[:id])
        end

        def update
            @song = Song.find(params[:id])
            @song.update(song_params(:name, :bio))
            # binding.pry
            redirect_to song_path(@song)
        end

    private

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end

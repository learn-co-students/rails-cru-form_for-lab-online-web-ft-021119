class SongsController < ApplicationController
    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end

    def show
        #display each of the songs genre and artist
        #link to the respective genre and artist show pages
       # @songs = Song.all
       @song = Song.find(params[:id])
       @artist = @song.artist
       @genre = @song.genre
    end

    private
        def song_params(*args)
            params.require(:song).permit(*args)
        end

end

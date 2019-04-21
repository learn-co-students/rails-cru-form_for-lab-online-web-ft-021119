class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
  end

  def update
  end

  def edit
  end
end

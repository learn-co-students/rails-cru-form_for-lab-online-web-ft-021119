class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
  end

  def update
  end

  def edit
  end
end

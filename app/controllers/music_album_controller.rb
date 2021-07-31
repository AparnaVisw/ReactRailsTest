# frozen_string_literal: true

class MusicAlbumController < ApplicationController
  layout "hello_world"

#code for sending props for listing all the songs in coillection
  def index
    @props = { tracks: Track.all}
  end


# search functionality code as API returning json
# search?popularity=123&album_name=BackstreetBoys&artist_name=Jones
  def search
    @songs = Track.search(params.slice(:popularity, :album_name, :artist_name))
    render json: @songs
  end
end

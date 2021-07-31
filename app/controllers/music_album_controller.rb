# frozen_string_literal: true

class MusicAlbumController < ApplicationController
  layout "hello_world"

#props for listing all the songs in coillection
  def index
    @props = { tracks: Track.all}
  end


# search functionality code as API
  def search
    @songs = Track.search(params.slice(:popularity, :album_name, :artist_name))
    render json: @songs
  end
end

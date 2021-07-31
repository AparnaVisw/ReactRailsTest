# frozen_string_literal: true

class MusicAlbumController < ApplicationController
  layout "hello_world"

  def index
    tracks = Track.all
    @props = { tracks: tracks}
  end
end

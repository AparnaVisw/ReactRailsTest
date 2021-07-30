# frozen_string_literal: true

class MusicAlbumController < ApplicationController
  layout "hello_world"

  def index
    @props = { tracks: Track.all}
  end
end

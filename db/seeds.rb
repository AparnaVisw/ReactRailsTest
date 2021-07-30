# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'rspotify'
require 'json'

#fetches data from spotify and populates in to Track model
if !Track.exists?
	tracks = (RSpotify::Recommendations.generate(seed_genres: ['blues', 'Indie', 'Alternative Pop/Rock','country']))&.tracks
    tracks = tracks.map do |track|
      Track.create_new_spotify_track(track)
    end
end

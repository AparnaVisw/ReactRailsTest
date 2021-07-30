class Track < ApplicationRecord

	def self.create_new_spotify_track(track)
	    Track.create!(
	      spotify_id: track.id,
	      name: track.name,
	      artist_name: track.artists&.first.name,
	      preview_url: track.preview_url,
	      href: track.href,
	      popularity: track.popularity,
	      duration_ms: track.duration_ms
	    )
	end

end
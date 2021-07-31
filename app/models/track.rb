class Track < ApplicationRecord
	include Searcheable

	def self.create_new_spotify_track(track)
	    track = Track.new(
	      spotify_id: track.id,
	      name: track.name,
	      artist_name: track.artists&.first.name,
	      preview_url: track.preview_url,
	      href: track.href,
	      popularity: track.popularity,
	      duration_ms: track.duration_ms
	    )
	    track.save!
	end

	scope :search_by_popularity, -> (popularity) { where popularity: popularity }
	scope :search_by_album_name, -> (album_name) { where("name like ?", "#{album_name}%") }
	scope :search_by_artist_name, -> (artist_name) { where("artist_name like ?", "#{artist_name}%")}

end
class TrackSerializer < ActiveModel::Serializer
  # attributes :id, :name, :artist_name, :preview_url, :spotify_id, :href, :popularity, :duration_ms
  attributes *Track.column_names
end

class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist_name
      t.string :preview_url
      t.string :spotify_id
      t.string :href
      t.integer :popularity
      t.integer :duration_ms

      t.timestamps
    end
  end
end

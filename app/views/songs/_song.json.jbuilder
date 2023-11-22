json.extract! song, :id, :title, :performer_id, :author_id, :created_at, :updated_at
json.url song_url(song, format: :json)

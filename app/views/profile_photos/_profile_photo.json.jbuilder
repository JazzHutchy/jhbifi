json.extract! profile_photo, :id, :profile_id, :photo_data, :created_at, :updated_at
json.url profile_photo_url(profile_photo, format: :json)

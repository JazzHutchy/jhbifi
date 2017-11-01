json.extract! profile, :id, :user_id_id, :name, :phone_number, :address, :city, :state, :country_code, :avatar, :created_at, :updated_at
json.url profile_url(profile, format: :json)

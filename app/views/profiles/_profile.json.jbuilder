json.extract! profile, :id, :user_id_id, :first_name, :last_name, :suburb, :medicare, :concession, :date_of_birth, :sex, :created_at, :updated_at
json.url profile_url(profile, format: :json)
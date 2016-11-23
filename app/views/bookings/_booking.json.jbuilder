json.extract! booking, :id, :profile_id, :pharmacy_id, :appointment, :created_at, :updated_at
json.url booking_url(booking, format: :json)
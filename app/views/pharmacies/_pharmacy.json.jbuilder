json.extract! pharmacy, :id, :name, :address, :lat, :lng, :created_at, :updated_at
json.url pharmacy_url(pharmacy, format: :json)
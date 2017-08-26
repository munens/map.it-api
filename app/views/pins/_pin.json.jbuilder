json.extract! pin, :id, :location, :pin_lat, :pin_lng, :created_at, :updated_at
json.url pin_url(pin, format: :json)
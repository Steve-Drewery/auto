json.extract! event, :id, :name, :description, :price, :created_at, :updated_at
json.url event_url(event, format: :json)

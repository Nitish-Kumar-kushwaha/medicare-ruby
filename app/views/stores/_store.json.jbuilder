json.extract! store, :id, :name, :purpose, :category, :price, :description, :created_at, :updated_at
json.url store_url(store, format: :json)

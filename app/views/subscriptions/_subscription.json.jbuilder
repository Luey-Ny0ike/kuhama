json.extract! subscription, :id, :name, :price, :features, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)

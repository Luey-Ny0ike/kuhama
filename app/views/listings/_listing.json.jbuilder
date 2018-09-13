json.extract! listing, :id, :asset_name, :description, :pricing, :phone_number, :email, :website, :created_at, :updated_at
json.url listing_url(listing, format: :json)

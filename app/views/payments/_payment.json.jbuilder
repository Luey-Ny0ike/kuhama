json.extract! payment, :id, :amount, :ref, :created_at, :updated_at
json.url payment_url(payment, format: :json)

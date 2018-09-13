json.extract! testimonial, :id, :body, :starrating, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)

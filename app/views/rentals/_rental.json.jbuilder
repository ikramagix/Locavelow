json.extract! rental, :id, :user_id, :bicycle_id, :start_date, :end_date, :rental_status, :created_at, :updated_at
json.url rental_url(rental, format: :json)

json.extract! client_workout, :id, :client_name, :trainer, :duration_mins, :date_of_workout, :paid_amount, :created_at, :updated_at
json.url client_workout_url(client_workout, format: :json)

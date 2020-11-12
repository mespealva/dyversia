json.extract! appointment, :id, :name, :desc, :date, :acta, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

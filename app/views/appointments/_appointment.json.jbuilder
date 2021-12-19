json.extract! appointment, :id, :name, :date_day, :date_month, :date_year, :start_hour, :start_min, :start_ampm, :end_hour, :end_min, :end_ampm, :location, :comments, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)

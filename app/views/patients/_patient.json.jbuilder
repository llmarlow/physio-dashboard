json.extract! patient, :id, :name, :phone_number, :string, :created_at, :updated_at
json.url patient_url(patient, format: :json)
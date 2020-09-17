json.extract! patient, :id, :first_name, :last_name, :age, :dob, :language, :sex, :phone, :street, :city, :state, :zip, :created_at, :updated_at
json.url patient_url(patient, format: :json)

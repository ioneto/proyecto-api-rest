json.extract! subject, :id, :name, :sigla, :credits, :created_at, :updated_at
json.url subject_url(subject, format: :json)
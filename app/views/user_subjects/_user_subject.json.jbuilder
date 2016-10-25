json.extract! user_subject, :id, :user_id, :subject_id, :subject, :reviews, :semester, :created_at, :updated_at
json.url user_subject_url(user_subject, format: :json)
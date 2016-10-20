json.extract! review, :id, :user_subject_id, :fechaEvaluacion, :nota, :created_at, :updated_at
json.url review_url(review, format: :json)
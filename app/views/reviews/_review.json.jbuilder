json.extract! review, :id, :user_subject_id, :title, :primary_color, :user_subject,:secondary_color, :start_date, :end_date, :score, :created_at, :updated_at
json.url review_url(review, format: :json)
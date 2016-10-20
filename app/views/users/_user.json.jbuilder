json.extract! user, :id, :username, :password, :fullname, :email, :rol, :created_at, :updated_at
json.url user_url(user, format: :json)
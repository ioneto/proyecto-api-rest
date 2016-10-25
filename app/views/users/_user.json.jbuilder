json.id user.id
json.username user.username
json.password user.password
json.full_name user.full_name
	json.subjects do
		json.array! user.subjects do |subject|
			json.id subject.id
			json.initials subject.initials
			json.name subject.name
		end
	end
	json.dates do
		json.array! user.user_subjects do |use|
			json.reviews use.reviews
		end
	end
json.url user_url user
json.user do 
	json.id user.id
	json.username user.username
	json.password user.password
	json.fullname user.fullname
	json.subjects do
		json.array! user.subjects do |subject|
			json.id subject.id
			json.sigla subject.sigla
		end
	end
	json.fechas do
		json.array! user.user_subjects do |use|
			json.reviews use.reviews
		end
	end
end
json.url user_url user
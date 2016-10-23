json.subjects do
		json.array! @user.subjects do |subject|
			json.id subject.id
			json.sigla subject.sigla
			json.credits subject.credits
		end
end
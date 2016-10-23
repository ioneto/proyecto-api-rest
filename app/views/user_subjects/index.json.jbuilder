		json.array! @user.user_subjects do |user_subject|
			json.user_subject_id user_subject.id
			json.ramos user_subject.subject
		end

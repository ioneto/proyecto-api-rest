json.user do 
	json.user_subject_id @user.id
	json.ramos @user.subject
	json.semester @user.semester
end
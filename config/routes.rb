Rails.application.routes.draw do
  
  resources :subjects
  resources :users do
  	get 'subjects', to: 'user_subjects#index'
  	post 'subjects', to: 'user_subjects#create'
  	get 'subjects/:id', to: 'user_subjects#show'
  	put 'subjects/:id', to: 'user_subjects#update'
  	patch 'subjects/:id', to: 'user_subjects#update'
  	delete 'subjects/:id', to: 'user_subjects#destroy'
    get 'subjects/:user_subject_id/reviews', to: 'reviews#index'
    post 'subjects/:user_subject_id/reviews', to: 'reviews#create'
    get 'subjects/:user_subject_id/reviews/:id', to: 'reviews#show'    
   	#resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

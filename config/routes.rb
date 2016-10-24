Rails.application.routes.draw do

  match '*any' => 'application#options', :via => [:options]
  
  resources :users do
    # RUTAS RELACIONADAS A LOS MODELOS USER_SUBJECT Y SUBJECT
    get 'user-subjects', to: 'user_subjects#index' # Muestra todos los user_subjects de un usuario en particular
    get 'user-subjects/subjects/:subject_id', to: 'user_subjects#show_by_subject_id' # Muestra un user_subject con un usuario y un subject en particular
    get 'subjects', to: 'subjects#show_by_user_id' # Muestra todos los subjects de un usuario en particular
    get 'subjects/:subject_id', to: 'subjects#show_by_user_id' # Muestra un subject de un usuario en particular

    post 'subjects/:subject_id', to: 'user_subjects#create' # Registra un subject a un usuario (requiere body json)

    delete 'subjects/:subject_id', to: 'user_subjects#destroy_by_subject_id' # Elimina un user_subject con un usuario y un subject en particular

    # RUTAS RELACIONADAS AL MODELO REVIEWS
    get 'reviews', to: 'reviews#show_by_user_id' # Muestra todos los reviews de un usuario en particular
    get 'reviews/:id', to: 'reviews#show_by_user_id' # Muestra un review de un usuario en particular
    get 'subjects/:subject_id/reviews', to: 'reviews#show_by_user_id_and_subject_id' # Muestra todos los reviews de un subject de un usuario en particular

    post 'subjects/:subject_id/reviews', to: 'reviews#create' # Registra un review de un subject a un usuario (requiere body json)

    put 'subjects/:subject_id/reviews/:id', to: 'reviews#update' # Modifica un registro completo de un review de un subject de un usuario (requiere body json)

    delete 'subjects/:subject_id/reviews/:id', to: 'reviews#destroy' # Elimina un review de un subject de un usuario
  end

  resources :subjects
  resources :user_subjects
  resources :reviews
end

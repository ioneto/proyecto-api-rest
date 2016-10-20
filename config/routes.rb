Rails.application.routes.draw do
  resources :reviews
  resources :user_subjects
  resources :subjects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

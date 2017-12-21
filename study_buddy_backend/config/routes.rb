Rails.application.routes.draw do
  resources :templates
  resources :notes
  resources :types
  resources :sub_headers
  resources :user_subjects
  resources :subjects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

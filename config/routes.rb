Rails.application.routes.draw do
  resources :templates
  resources :notes
  resources :types
  resources :sub_headers
  resources :user_subjects, only: [:show]
  resources :subjects
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end

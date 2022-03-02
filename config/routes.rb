Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :programs
  resources :progresses

  post :identifier_progress, to: 'progresses#update_by_identifier'
end

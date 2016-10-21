Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  resources :employers
  resources :job_seekers
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

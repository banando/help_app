Rails.application.routes.draw do
  resources :employers
  resources :models
  resources :job_seekers
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

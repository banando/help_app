Rails.application.routes.draw do
  # devise_for :users

  # root to: 'employers#index'

  devise_for :users

devise_scope :user do
  authenticated :user do
    root 'employers#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  get 'sessions/create'

  get 'sessions/destroy'

  resources :employers
  resources :job_seekers do
    resources :comments
  end
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

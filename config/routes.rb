Rails.application.routes.draw do
  get 'log_in', to: 'static_pages#log_in'
  root to: 'static_pages#play'
  namespace :api do
    resources :high_scores, only: [:create, :index]
  end
end

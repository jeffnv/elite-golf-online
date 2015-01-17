Rails.application.routes.draw do
  get 'log_in', to: 'static_pages#log_in'

  root to: 'static_pages#base'
  namespace :api, defaults: {format: :json} do
    resources :courses, only: [:index, :show, :create]
    resources :maps
    resources :high_scores, only: [:create, :index]
  end
end

Rails.application.routes.draw do
  get 'log_in', to: 'static_pages#log_in'
  get 'base', to: 'static_pages#base'
  root to: 'static_pages#play'
  namespace :api, defaults: {format: :json} do
    resources :courses, only: [:index, :show]
    resources :high_scores, only: [:create, :index]
  end
end

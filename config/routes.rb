Rails.application.routes.draw do

  get 'states/index'

  get 'states/show'

  resources :districts, only: [:index, :show] do
    resources :sites, only: [:index, :show]
  end

  resources :sites, only: [:index, :show] do
    resources :users, only: [:index, :show]
    resources :population_reports, only: [:index, :show]
    resources :stock_reports, only: [:index, :show]
    resources :program_reports, only: [:index, :show]
  end

  resources :states, only: [:index, :show] do
    resources :sites, only: [:index, :show]
    resources :districts, only: [:index, :show]
  end

  root to: 'landing#home'

end

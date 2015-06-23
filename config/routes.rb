Rails.application.routes.draw do

  resources :sites, only: [:index, :show] do
    resources :users, only: [:index, :show]
    resources :population_reports, only: [:index, :show]
    resources :stock_reports, only: [:index, :show]
    resources :program_reports, only: [:index, :show]
  end

  resources :states, only: [:index, :show] do
    resources :districts, only: [:index, :show] do
      resources :sites, only: [:index, :show]
    end
  end

  root to: 'landing#home'

end

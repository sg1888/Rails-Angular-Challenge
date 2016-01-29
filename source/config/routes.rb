Rails.application.routes.draw do
  devise_for :customers

  
  resources :transactions, only: :index, path: :charges

  root to: "transactions#index"
  get '*other', to: 'application#angular_view' # This route is used to avoid error 404 when user refreshes the page which processed by Angular and does not match any route
end

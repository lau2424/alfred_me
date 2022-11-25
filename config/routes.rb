Rails.application.routes.draw do
  root to: "butlers#index"
  devise_for :users
  resources :butlers do
    resources :reviewtables
    resources :bookings
  end
end

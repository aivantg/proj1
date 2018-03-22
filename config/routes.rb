Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch '/capture', to: "home#capture", as: :capture
  resources :trainers
end

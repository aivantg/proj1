Rails.application.routes.draw do
  devise_for :trainers#, :controllers => { :registrations => "registrations" }
  root to: "home#index"
  patch '/capture', to: "home#capture", as: :capture
  patch '/attack', to: "trainers#attack", as: :attack
  resources :trainers
  resources :pokemons, only: [:new, :create]
end

Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
end

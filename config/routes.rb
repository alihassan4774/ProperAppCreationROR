Rails.application.routes.draw do
  get "deain_pages/home"
  get "deain_pages/restricted"
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  resources :portfolios, except: [ :show ]

  resources :blogs do
   member do
     get :toggle_status
   end
  end
  get "angular-items", to: "portfolios#angular"
  get "ruby-items", to: "portfolios#ruby"
  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"
   get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
end

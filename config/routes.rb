Rails.application.routes.draw do
  resources :portfolios, except: [ :show ]
  resources :blogs do 
   member do
     get :toggle_status
   end
  end

  get "portfolio/:id", to: "portfolios#show", as: "portfolio_show"
   get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
end

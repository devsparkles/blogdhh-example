Rails.application.routes.draw do
  # resources :comments
  resources :posts do
    resources :comments
  end

  root "posts#index"
  get "up" => "rails/health#show", as: :rails_health_check

end

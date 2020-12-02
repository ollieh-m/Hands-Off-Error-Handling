Rails.application.routes.draw do
  resources :letters, only: [:new, :create]
end

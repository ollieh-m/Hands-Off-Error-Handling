Rails.application.routes.draw do
  resources :letters, only: [:new, :create]

  match "/:error_status" => "errors#show", 
    via: :all,
    constraints: { error_status: /(404|422|500)/ }
end

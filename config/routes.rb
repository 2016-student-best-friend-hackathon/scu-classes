Rails.application.routes.draw do
  resources :resources
  root to: "resources#index"
end

Rails.application.routes.draw do
  resources :resources
  resources :chapters
  root to: "resources#index"
end

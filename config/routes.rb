Rails.application.routes.draw do
  root to: "icons#index"
  resources :icons
end

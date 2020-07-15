Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :category do
    resources :question
  end
end

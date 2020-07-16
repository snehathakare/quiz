Rails.application.routes.draw do
  get 'answers/index'
  devise_for :users
  root "home#index"

  resources :categories do
    resources :questions
  end
end

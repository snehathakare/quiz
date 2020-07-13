Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  get 'question/index'
  get 'category/index'
  get 'category/show'
  get 'home/index'
end

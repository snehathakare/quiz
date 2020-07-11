Rails.application.routes.draw do
  devise_for :users
  get 'question/index'
  get 'category/index'
  #root "home#index"
  get 'home/index'
end

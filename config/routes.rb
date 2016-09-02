Rails.application.routes.draw do
  resources :swims
  devise_for :users

  root to:'swims#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

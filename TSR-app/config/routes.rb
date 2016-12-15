Rails.application.routes.draw do
  resources :events
  devise_for :apprentices
  devise_for :masters
  resources :homes
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#index"

  # skills
  
end

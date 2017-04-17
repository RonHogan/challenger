Rails.application.routes.draw do
  resources :challange_walls
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

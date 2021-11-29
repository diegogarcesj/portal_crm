Rails.application.routes.draw do
  devise_for :users

  root to: 'leads#index'
  resources :leads do
    resources :conversations, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

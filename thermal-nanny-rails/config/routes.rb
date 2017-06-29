Rails.application.routes.draw do
  get 'sites/mysites'
  resources :sites do
    post :subscribe
  end

  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

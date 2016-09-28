Rails.application.routes.draw do
  resources :banners, only: [:index, :new, :create, :destroy]

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  resources :articles do
    resources :comments
  end

  root 'static_pages#home'
end

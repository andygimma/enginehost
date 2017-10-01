Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :donatable_organizations
    root to: "users#index"
  end

  devise_for :users
  # get 'static_pages/home'
  # root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Donatable::Engine => "/", as: 'donations'
  root to: 'donatable/static_pages#home'
end

Rails.application.routes.draw do
  devise_for :users

  resources :jobs

  namespaces :admin do
    resources :jobs
  end

  root 'jobs#index'
end

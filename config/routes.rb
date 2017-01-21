Rails.application.routes.draw do
  devise_for :users


  resources :welcome do
  end

  resources :jobs do
    resources :resumes
  end

  resources :jobs do
    collection do
      get :search
    end
  end

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
    end
  end

  root 'welcome#index'
end

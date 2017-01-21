Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }


  resources :welcome do
  end

  resources :jobs do
    resources :resumes
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

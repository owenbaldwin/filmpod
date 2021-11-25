Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :films do
    resources :departments, only: [:new, :create]
    resources :grants, only: [:new, :create, :index]
  end

  # resources :grants, only: [:edit, :update] Good to implement

  resources :departments, only: [:show] do
    resources :tasks, only: [:new, :create]
    resources :departments_users, only: [:new, :create, :index]
    member do
      get :moodboard
    end
  end

  resources :departments, only: [:index, :destroy, :edit, :update]

  resources :tasks, except: [:new, :create] do
    member do
      patch :move
    end
    resources :submissions, only: [:new, :create]
  end



  resources :submissions, only: [:show] do
    resources :comments, only: [:new, :create]
  end

  resources :submissions, only: [:edit, :update, :index, :destroy]

  resources :comments, only: [:edit, :update, :index, :destroy]

  resources :users, only: [:show]
end

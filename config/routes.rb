Rails.application.routes.draw do
  # get 'cocktails/'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'

  root to: 'cocktails#index'

  resources :cocktails, only: [ :index, :new, :create, :show] do
    resources :doses, only: [ :index, :new, :create ]
  end

  resources :doses, only: [ :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

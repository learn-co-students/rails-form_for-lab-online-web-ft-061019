Rails.application.routes.draw do

  resources :students, only: [:new, :show, :edit, :update, :create]
  resources :school_classes, only: [:new, :show, :edit, :update, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

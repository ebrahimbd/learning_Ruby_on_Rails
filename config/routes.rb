Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles, only: [:create, :index,:show, :update, :destroy]
    end
  end
  resources :students
  get 'home/index'
  get 'home/comp'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

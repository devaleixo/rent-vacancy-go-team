Rails.application.routes.draw do
  devise_for :users
  resources :parking_lots do
    resources :reservations, only: [:new, :create]
    collection do
      get :mylots
      get :myreservations
    end
  end
  resources :reservations, only: :destroy
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "parking_lots#index"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new", as: :new_resto
  post "restaurants", to: "restaurants#create"
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_review
  post "restaurants/reviews", to: "reviews#create"
  get "restaurants/:id", to: "restaurants#show", as: :show

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  post "restaurants", to: "restaurants#create"
  get "restaurant/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  post "restaurant/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end

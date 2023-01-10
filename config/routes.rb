Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurant#index', as: :restaurants
  get 'restaurants/:id', to: 'restaurant#show', as: :restaurant
end

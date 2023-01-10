Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'restaurants', to: 'restaurant#index', as: :restaurant_lists
  get 'restaurants/:id', to: 'restaurant#show', as: :restaurant_details
  get 'restaurants/new', to: 'restaurant#new', as: :create_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch  'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurant#destroy'
end

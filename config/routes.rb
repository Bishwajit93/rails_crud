Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants
  get 'restaurants', to: 'restaurant#index'
  get 'restaurants/:id', to: 'restaurant#show'
  get 'restaurants/new', to: 'restaurant#new'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id/edit', to: 'restaurants#edit'
  patch  'restaurants/:id', to: 'restaurants#update'
  delete 'restaurants/:id', to: 'restaurant#destroy'
end

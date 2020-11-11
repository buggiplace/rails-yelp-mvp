Rails.application.routes.draw do

  # get 'review/show'
  # get 'review/new'
  # get "restaurants", to: "restaurants#index"
  # get "restaurant/new", to: "restaurants#new"
  # get "restaurant/:id", to:"restaurants#show"
  # post "restaurants", to: "restaurants#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

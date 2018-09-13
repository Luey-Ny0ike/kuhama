Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :listings do
    resources :ratings
  end
  resources :testimonials
  resources :listing_categories
  resources :ammenities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/faq', to: "home#faq"

  # User dashboard routes
  get 'users', to: "users#index", as: "users"
  get 'users/:id', to: "users#show", as: "user"
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  patch 'users/:id', to: "users#update"
end

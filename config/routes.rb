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
end

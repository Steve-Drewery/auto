Rails.application.routes.draw do
  get 'orders/success'
  get 'orders/bought'
  get 'orders/sold'
  resources :listings
  resources :events
  devise_for :users
  root 'pages#home'
  # root 'events#index'
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  post "listings/:id/order", to: "listings#place_order", as: "place_order"

  scope controller: :static do
    get :pricing
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  scope :api do
    resources :reviews
    resources :requests
    resources :pictures
    resources :rentals
    resources :users
    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
    get "/requests/:id/accept", to: "requests#accept"
    get "/requests/:id/reject", to: "requests#reject"
  end
end

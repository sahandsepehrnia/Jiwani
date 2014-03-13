Jiwani::Application.routes.draw do

  # Home
  root 'home#show'

  # Member
  get "/members/new" => 'members#new'
  get "/members/create" => 'members#create'
  get "/members" => 'members#index'
  get "/members/:member_id/show" => 'members#show'

  # Message Board
  get "/msgboard" => 'msgboard#index'
  get "/msgboard/create" => 'msgboard#create'
  get "/msgboard/show" => 'msgboard#show'
  get "/msgboard/new" => 'msgboard#new'
  get "/msgboard/:message_id/delete" => 'msgboard#destroy'

  # Login/Logout
  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

  # New Products
  get "/products" => 'products#index'
  get "/products/:product_id/show" => 'products#show'

  # Store locations
  get "/locations" => 'locations#index'
  get "/locations/:location_id/show" => 'locations#show'

  # Weather
  get "/weather" => "weather#show"

end

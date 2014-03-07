Jiwani::Application.routes.draw do

  # Home
  root 'home#show'

  # Member
  get "/members/new" => 'members#new'
  get "/members/create" => 'members#create'
  get "/members/:member_id/show" => 'members#show'

  # Message Board
  get "/msgboard" => 'msgboard#show'

  # Login/Logout
  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

  # New Products
  get "/products" => 'products#show'

  # Store locations
  get "/locations" => 'locations#show'

end

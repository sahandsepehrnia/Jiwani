Jiwani::Application.routes.draw do

  # Home
  get "/" => 'home#show'

  # Member
  get "/members/new" => 'members#new'
  get "/members/create" => 'members#create'
  get "/members/:member_id/show" => 'members#show'

  # Message Board
  get "/msgboard/show" => 'msgboard#show'

  # Login/Logout
  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  get "/authenticate" => 'sessions#create'

end

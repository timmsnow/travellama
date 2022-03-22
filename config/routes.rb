Rails.application.routes.draw do
  #country  
  get '/countries' => 'countries#index'
  get '/countries/:id' => 'countries#show'
  
  #destination
  get '/destinations' => 'destinations#index'   
  
  #destination_type
  get '/destination_types' => 'destination_types#index' 
end

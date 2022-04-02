Rails.application.routes.draw do
  #country  
  get '/countries' => 'countries#index'
  get '/countries/:id' => 'countries#show'
  get '/countries/:id/photos' => 'countries#photo_paths'
  get '/countries/:id/experiences' => 'countries#experiences'
  
  #destination
  get '/destinations' => 'destinations#index'   
  
  #destination_type
  get '/destination_types' => 'destination_types#index' 

  #experience  
  get '/experiences' => 'experiences#index'
  get '/experiences/:id' => 'experiences#show'

  #post  
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/places/new' => 'places#new'
  get '/places/:id/edit' => 'places#edit'
  get '/places' => 'places#index'
  get '/places/:id' => 'places#show'
  delete '/places/:id' => 'places#delete'

  
  post '/places' => 'places#create'
  
  patch '/places/:id' => 'places#update'

  root 'places#index'
end

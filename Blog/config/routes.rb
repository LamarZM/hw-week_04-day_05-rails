Rails.application.routes.draw do
  
  get '/stories', to: 'stories#index', as: "stories"
  get '/stories/new', to: "stories#new", as: "new_story"
  get '/stories/:id/edit', to: "stories#edit", as: "edit_story"
  get "/stories/:id" , to: "stories#show", as: "story"
  delete '/stories/:id', to: "stories#destroy"
  post '/stories', to: "stories#create"
  patch '/stories/:id', to: "stories#update"
  

end

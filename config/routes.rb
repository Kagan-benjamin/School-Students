Rails.application.routes.draw do

  get '/', to: "schools#index"

  get '/schools', to: "schools#index", as: "schools"

  get '/schools/:id', to: "schools#show", as: "school"
  
  get '/students/new', to: "students#new"

  get '/students/:id/edit', to: "students#edit"

  patch '/students/:id', to: "students#update"

  get '/students/:id', to: "students#show", as: "student"

  delete '/students/:id', to: "students#destroy" 

  post '/students', to: "students#create"
end

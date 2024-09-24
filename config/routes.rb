Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  post '/movies', controller: 'movies', action: 'create'
 
end

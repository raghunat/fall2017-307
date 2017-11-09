# config/routes.rb

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index" # welcome == controller, index == method

  get "/test", to: "welcome#test"

  get "/stats", to: "welcome#get_stats"

end

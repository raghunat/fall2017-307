# config/routes.rb

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "welcome#index" # welcome == controller, index == method

  get "/test", to: "welcome#test"

  get "/stats", to: "welcome#get_stats"

  get '/people/1', to: 'welcome#one_person'
  get '/people/2', to: 'welcome#two_people'
  get '/people/3', to: 'welcome#three_people'
  get '/people/4', to: 'welcome#four_people'
  get '/people/5', to: 'welcome#five_people'


end

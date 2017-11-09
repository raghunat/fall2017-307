Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # use the home controller, index action
  root "home#index"
end

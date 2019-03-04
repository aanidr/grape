Rails.application.routes.draw do
  mount Factory::Base => '/api'

  resources :products
end

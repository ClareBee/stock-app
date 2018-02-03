Rails.application.routes.draw do

  root 'stocks#index'
  get 'charts', to: 'stocks#charts'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
